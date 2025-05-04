import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fakelab_records_webapp/core/domain/models/user/user.dart';
import 'package:fakelab_records_webapp/core/extensions/color_extensions.dart';
import 'package:fakelab_records_webapp/core/extensions/string_extensions.dart';
import 'package:fakelab_records_webapp/core/formatters/phone_number_formatter.dart';
import 'package:fakelab_records_webapp/core/gen/assets.gen.dart';
import 'package:fakelab_records_webapp/core/router/router.gr.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_clients_bloc/admin_clients_bloc.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_confirmation_dialog/app_confirmation_dialog.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/tappable.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AdminClientTile extends StatelessWidget {
  const AdminClientTile(this.client, {super.key});

  final User client;

  @override
  Widget build(BuildContext context) {
    final AdminClientsBloc bloc = context.read();

    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Tappable(
      onTap: () => context.pushRoute(AdminEditClientRoute(
        client: client,
        adminClientsBloc: bloc,
        id: client.id.toString(),
      )),
      child: Container(
        padding: Pad(all: isMobile ? 15 : 20),
        decoration: ShapeDecoration(
          color: context.colors.card,
          shape: SmoothRectangleBorder(
            borderRadius: SmoothBorderRadius(
              cornerRadius: 20,
              cornerSmoothing: 0.6,
            ),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        client.fullName,
                        style: _body(context, isMobile: isMobile),
                      ),
                      if (client.username.isNotNullAndEmpty)
                        Text(
                          '@${client.username}',
                          style: _footer(context, isMobile: isMobile),
                        ),
                    ],
                  ),
                ),
                Tappable(
                  onTap: () => context.pushRoute(AdminEditClientRoute(
                    client: client,
                    adminClientsBloc: bloc,
                    id: client.id.toString(),
                  )),
                  child: Assets.icons.pencil.light.svg(),
                ),
                const Gap(5),
                Tappable(
                  onTap: () => AppConfirmationDialog.show(
                    context,
                    title: 'Подтверждение',
                    description: 'Ты точно хочешь удалить этого клиента?',
                  ).then((isConfirmed) {
                    if (isConfirmed ?? false) {
                      bloc.add(AdminClientsEvent.deleteClient(client.id));
                    }
                  }),
                  child: Assets.icons.delete.primary.svg(),
                ),
              ],
            ),
            const Gap(10),
            if (isMobile)
              Column(
                children: _contacts
                    .map((child) => Padding(
                          padding: const Pad(top: 5),
                          child: child,
                        ))
                    .toList(),
              )
            else
              Row(
                children: _contacts
                    .map((child) => Padding(
                          padding: const Pad(right: 20),
                          child: child,
                        ))
                    .toList(),
              ),
          ],
        ),
      ),
    );
  }

  List<Widget> get _contacts => [
        ContactItem(
          text: '${client.id}',
          icon: Assets.icons.sort.light,
          isEnabled: false,
        ),
        if (client.username.isNotNullAndEmpty)
          ContactItem(
            text: '${client.username}',
            icon: Assets.icons.user.light,
          ),
        if (client.phoneNumber.isNotNullAndEmpty)
          ContactItem(
            text: phoneNumberFormatter.maskText(client.phoneNumber),
            icon: Assets.icons.phone.light,
            shouldDisplayCallButton: true,
          ),
      ];

  TextStyle _body(BuildContext context, {required bool isMobile}) =>
      isMobile ? context.styles.body3 : context.styles.body1;

  TextStyle _footer(BuildContext context, {required bool isMobile}) =>
      isMobile ? context.styles.footer2 : context.styles.footer1;
}

class CircleDivider extends StatelessWidget {
  const CircleDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3,
      width: 3,
      margin: const Pad(horizontal: 7),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: context.colors.footer.copyWithOpacity(.5),
      ),
    );
  }
}

class ContactItem extends StatelessWidget {
  const ContactItem({
    required this.text,
    required this.icon,
    this.isEnabled = true,
    this.shouldDisplayCallButton = false,
    super.key,
  });

  final String text;
  final SvgGenImage icon;

  final bool isEnabled;
  final bool shouldDisplayCallButton;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Row(
      children: [
        Tappable(
          onTap: isEnabled ? () => launchUrlString('https://t.me/$text') : null,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              icon.svg(
                height: isMobile ? 15 : 20,
                width: isMobile ? 15 : 20,
              ),
              const Gap(5),
              Text(text, style: context.styles.footer1),
            ],
          ),
        ),
        const Gap(10),
        ContactCopyButton(onTap: () {
          Clipboard.setData(ClipboardData(text: text));
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Скопировано')),
          );
        }),
        if (shouldDisplayCallButton) const Gap(5),
        if (shouldDisplayCallButton)
          ContactCallButton(onTap: () {
            launchUrlString('tel:+${text.extractNumerals()}');
          }),
      ],
    );
  }
}

class ContactCopyButton extends StatelessWidget {
  const ContactCopyButton({
    required this.onTap,
    super.key,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Tappable(
      onTap: onTap,
      child: Container(
        padding: Pad(
          vertical: isMobile ? 3 : 4,
          horizontal: isMobile ? 8 : 10,
        ),
        alignment: Alignment.center,
        decoration: ShapeDecoration(
          color: context.colors.onBackground.copyWithOpacity(.1),
          shape: SmoothRectangleBorder(
            borderRadius: SmoothBorderRadius(
              cornerRadius: isMobile ? 5 : 10,
              cornerSmoothing: 0.6,
            ),
          ),
        ),
        child: Text(
          'Скопировать',
          style: context.styles.body3.copyWith(
            fontSize: isMobile ? 10 : null,
            color: context.colors.onBackground,
          ),
        ),
      ),
    );
  }
}

class ContactCallButton extends StatelessWidget {
  const ContactCallButton({
    required this.onTap,
    super.key,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Tappable(
      onTap: onTap,
      child: Container(
        padding: Pad(
          vertical: isMobile ? 3 : 4,
          horizontal: isMobile ? 8 : 10,
        ),
        alignment: Alignment.center,
        decoration: ShapeDecoration(
          color: context.colors.onBackground.copyWithOpacity(.1),
          shape: SmoothRectangleBorder(
            borderRadius: SmoothBorderRadius(
              cornerRadius: isMobile ? 5 : 10,
              cornerSmoothing: 0.6,
            ),
          ),
        ),
        child: Text(
          'Позвонить',
          style: context.styles.body3.copyWith(
            fontSize: isMobile ? 10 : null,
            color: context.colors.onBackground,
          ),
        ),
      ),
    );
  }
}
