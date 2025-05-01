import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/extensions/color_extensions.dart';
import 'package:fakelab_records_webapp/core/extensions/list_extensions.dart';
import 'package:fakelab_records_webapp/core/extensions/string_extensions.dart';
import 'package:fakelab_records_webapp/core/gen/assets.gen.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/order/domain/bloc/admin_order_bloc.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/tappable.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/telegram/telegram_meta_wrapper.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AdminOrderScreenCustomerInfo extends StatelessWidget {
  const AdminOrderScreenCustomerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return TelegramMetaWrapper(builder: (context, meta) {
      return BlocBuilder<AdminOrderBloc, AdminOrderState>(
        builder: (context, state) {
          final Order order = state.order!;

          return Container(
            width: double.infinity,
            decoration: ShapeDecoration(
              color: context.colors.card,
              shape: SmoothRectangleBorder(
                borderRadius: SmoothBorderRadius(
                  cornerRadius: 20,
                  cornerSmoothing: 0.6,
                ),
              ),
            ),
            padding: const Pad(all: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Заказчик', style: context.styles.body1),
                const Gap(10),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: order.customer.fullName),
                      if (order.customer.username.isNotNullAndEmpty)
                        TextSpan(
                          text: ' @${order.customer.username}',
                          style: context.styles.footer1,
                        ),
                    ],
                  ),
                  style: context.styles.footer1.copyWith(
                    color: context.colors.onBackground,
                  ),
                ),
                if (isMobile)
                  ..._contacts(order)
                else
                  Row(
                    children: _contacts(order).alternateWith(
                      const Gap(20),
                    ),
                  ),
              ],
            ),
          );
        },
      );
    });
  }

  List<Widget> _contacts(Order order) => [
        Padding(
          padding: const Pad(top: 5),
          child: ContactItem(
            text: '${order.customer.id}',
            icon: Assets.icons.sort.light,
            isEnabled: false,
          ),
        ),
        if (order.customer.username.isNotNullAndEmpty)
          Padding(
            padding: const Pad(top: 5),
            child: ContactItem(
              text: '${order.customer.username}',
              icon: Assets.icons.user.light,
            ),
          ),
        if (order.customer.phoneNumber.isNotNullAndEmpty)
          Padding(
            padding: const Pad(top: 5),
            child: ContactItem(
              text: order.customer.phoneNumber,
              icon: Assets.icons.phone.light,
            ),
          ),
      ];
}

class ContactItem extends StatelessWidget {
  const ContactItem({
    required this.text,
    required this.icon,
    this.isEnabled = true,
    super.key,
  });

  final String text;
  final SvgGenImage icon;

  final bool isEnabled;

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
    return Tappable(
      onTap: onTap,
      child: Container(
        padding: const Pad(
          vertical: 4,
          horizontal: 10,
        ),
        alignment: Alignment.center,
        decoration: ShapeDecoration(
          color: context.colors.onBackground.copyWithOpacity(.1),
          shape: SmoothRectangleBorder(
            borderRadius: SmoothBorderRadius(
              cornerRadius: 10,
              cornerSmoothing: 0.6,
            ),
          ),
        ),
        child: Text(
          'Скопировать',
          style: context.styles.body3.copyWith(
            color: context.colors.onBackground,
          ),
        ),
      ),
    );
  }
}
