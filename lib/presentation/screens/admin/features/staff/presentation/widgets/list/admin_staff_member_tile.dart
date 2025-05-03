import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fakelab_records_webapp/core/extensions/color_extensions.dart';
import 'package:fakelab_records_webapp/core/extensions/string_extensions.dart';
import 'package:fakelab_records_webapp/core/gen/assets.gen.dart';
import 'package:fakelab_records_webapp/core/router/router.gr.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_staff_bloc/admin_staff_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/domain/models/staff_member.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_confirmation_dialog/app_confirmation_dialog.dart';
import 'package:fakelab_records_webapp/presentation/ui/avatar/avatar.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/tappable.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class AdminStaffMemberTile extends StatelessWidget {
  const AdminStaffMemberTile(this.staffMember, {super.key});

  final StaffMember staffMember;

  @override
  Widget build(BuildContext context) {
    final AdminStaffBloc bloc = context.read();

    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Tappable(
      onTap: () => context.pushRoute(AdminEditStaffMemberRoute(
        id: staffMember.id,
        adminStaffBloc: bloc,
        staffMember: staffMember,
      )),
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
                    if (staffMember.photoUrl.isNotNullAndEmpty)
                      Padding(
                        padding: const Pad(right: 10),
                        child: Avatar(
                          size: isMobile ? 40 : 50,
                          photoUrl: staffMember.photoUrl!,
                        ),
                      ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            staffMember.fullName,
                            style: _body(context, isMobile: isMobile),
                          ),
                          if (staffMember.username.isNotNullAndEmpty)
                            Text(
                              staffMember.username!,
                              style: _footer(context, isMobile: isMobile),
                            ),
                        ],
                      ),
                    ),
                    Tappable(
                      onTap: () => context.pushRoute(AdminEditStaffMemberRoute(
                        id: staffMember.id,
                        adminStaffBloc: bloc,
                        staffMember: staffMember,
                      )),
                      child: Assets.icons.pencil.light.svg(),
                    ),
                    const Gap(5),
                    Tappable(
                      onTap: () => AppConfirmationDialog.show(
                        context,
                        title: 'Подтверждение',
                        description:
                            'Ты точно хочешь удалить этого сотрудника?',
                      ).then((isConfirmed) {
                        if (isConfirmed ?? false) {
                          bloc.add(
                            AdminStaffEvent.deleteStaffMember(staffMember.id),
                          );
                        }
                      }),
                      child: Assets.icons.delete.primary.svg(),
                    ),
                  ],
                ),
                const Gap(10),
                Wrap(
                  spacing: 5,
                  runSpacing: 5,
                  children: [
                    ..._activities(context),
                    ..._services(context),
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

  List<Widget> _activities(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return staffMember.activities.map((activity) {
      return Container(
        padding: Pad(
          vertical: isMobile ? 5 : 8,
          horizontal: isMobile ? 10 : 16,
        ),
        decoration: ShapeDecoration(
          color: context.colors.background,
          shape: SmoothRectangleBorder(
            borderRadius: SmoothBorderRadius(
              cornerRadius: 8,
              cornerSmoothing: 0.6,
            ),
          ),
        ),
        child: Text(
          activity.title,
          style: context.styles.footer1.copyWith(
            color: context.colors.onBackground,
          ),
        ),
      );
    }).toList();
  }

  List<Widget> _services(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return staffMember.services.map((service) {
      return Container(
        padding: Pad(
          vertical: isMobile ? 5 : 8,
          horizontal: isMobile ? 10 : 16,
        ),
        decoration: ShapeDecoration(
          color: context.colors.onBackground,
          shape: SmoothRectangleBorder(
            borderRadius: SmoothBorderRadius(
              cornerRadius: 8,
              cornerSmoothing: 0.6,
            ),
          ),
        ),
        child: Text(
          service.title,
          style: context.styles.footer1.copyWith(
            color: context.colors.background,
          ),
        ),
      );
    }).toList();
  }
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
