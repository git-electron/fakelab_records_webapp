import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/domain/models/user/user.dart';
import 'package:fakelab_records_webapp/core/extensions/color_extensions.dart';
import 'package:fakelab_records_webapp/core/extensions/string_extensions.dart';
import 'package:fakelab_records_webapp/core/gen/assets.gen.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_clients_bloc/admin_clients_bloc.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_confirmation_dialog/app_confirmation_dialog.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/tappable.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class AdminClientMemberTile extends StatelessWidget {
  const AdminClientMemberTile(this.client, {super.key});

  final User client;

  @override
  Widget build(BuildContext context) {
    final AdminClientsBloc bloc = context.read();

    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Tappable(
      // onTap: () => context.pushRoute(AdminEditStaffMemberRoute(
      //   id: client.id,
      //   adminStaffBloc: bloc,
      //   staffMember: client,
      // )),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
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
              crossAxisAlignment: CrossAxisAlignment.start,
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
                              client.username!,
                              style: _footer(context, isMobile: isMobile),
                            ),
                        ],
                      ),
                    ),
                    Tappable(
                      // onTap: () => context.pushRoute(AdminEditStaffMemberRoute(
                      //   id: client.id,
                      //   adminStaffBloc: bloc,
                      //   staffMember: client,
                      // )),
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
              ],
            ),
          ),
        ],
      ),
    );
  }

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
