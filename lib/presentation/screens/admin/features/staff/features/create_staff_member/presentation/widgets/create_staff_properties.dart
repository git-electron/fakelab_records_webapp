import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/features/create_staff_member/domain/bloc/admin_create_staff_member_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/domain/models/staff_activity.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/domain/models/staff_service_type.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/tappable.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class CreateStaffProperties extends StatelessWidget {
  const CreateStaffProperties({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: 5,
          runSpacing: 5,
          children: _activities(context),
        ),
        const Gap(20),
        Wrap(
          spacing: 5,
          runSpacing: 5,
          children: _serviceTypes(context),
        ),
      ],
    );
  }

  List<Widget> _activities(BuildContext context) {
    final AdminCreateStaffMemberBloc bloc = context.read();

    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return StaffActivity.values.map((activity) {
      return BlocBuilder<AdminCreateStaffMemberBloc,
          AdminCreateStaffMemberState>(
        builder: (context, state) {
          return Tappable(
            onTap: () => bloc.add(
              AdminCreateStaffMemberEvent.activitySelected(activity),
            ),
            child: Container(
              padding: Pad(
                vertical: isMobile ? 6 : 8,
                horizontal: isMobile ? 12 : 16,
              ),
              decoration: ShapeDecoration(
                color: state.isActivitySelected(activity)
                    ? context.colors.onBackground
                    : context.colors.card,
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
                  color: state.isActivitySelected(activity)
                      ? context.colors.background
                      : context.colors.onBackground,
                ),
              ),
            ),
          );
        },
      );
    }).toList();
  }

  List<Widget> _serviceTypes(BuildContext context) {
    final AdminCreateStaffMemberBloc bloc = context.read();

    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return StaffServiceType.values.map((service) {
      return BlocBuilder<AdminCreateStaffMemberBloc,
          AdminCreateStaffMemberState>(
        builder: (context, state) {
          return Tappable(
            onTap: () => bloc.add(
              AdminCreateStaffMemberEvent.serviceSelected(service),
            ),
            child: Container(
              padding: Pad(
                vertical: isMobile ? 6 : 8,
                horizontal: isMobile ? 12 : 16,
              ),
              decoration: ShapeDecoration(
                color: state.isServiceSelected(service)
                    ? context.colors.onBackground
                    : context.colors.card,
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
                  color: state.isServiceSelected(service)
                      ? context.colors.background
                      : context.colors.onBackground,
                ),
              ),
            ),
          );
        },
      );
    }).toList();
  }
}
