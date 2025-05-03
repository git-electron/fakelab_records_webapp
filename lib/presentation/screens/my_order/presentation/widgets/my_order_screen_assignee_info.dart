import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/extensions/string_extensions.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/domain/models/staff_member.dart';
import 'package:fakelab_records_webapp/presentation/screens/my_order/domain/bloc/my_order_bloc.dart';
import 'package:fakelab_records_webapp/presentation/ui/avatar/avatar.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/telegram/telegram_meta_wrapper.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class MyOrderScreenAssigneeInfo extends StatelessWidget {
  const MyOrderScreenAssigneeInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return TelegramMetaWrapper(builder: (context, meta) {
      return BlocBuilder<MyOrderBloc, MyOrderState>(
        builder: (context, state) {
          final Order order = state.order!;

          if (order.assignee == null) return const SizedBox();

          final StaffMember assignee = order.assignee!;

          return Container(
            width: double.infinity,
            margin: const Pad(top: 10),
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
                Text('Исполнитель', style: context.styles.body1),
                const Gap(20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (assignee.photoUrl.isNotNullAndEmpty)
                      Padding(
                        padding: const Pad(right: 10),
                        child: Avatar(
                          photoUrl: assignee.photoUrl!,
                          size: 50,
                        ),
                      ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          assignee.fullName,
                          style: context.styles.body2,
                        ),
                        if (assignee.username.isNotNullAndEmpty)
                          Text(
                            assignee.username!,
                            style: context.styles.footer1,
                          ),
                      ],
                    ),
                  ],
                ),
                const Gap(10),
                Wrap(
                  spacing: 5,
                  runSpacing: 5,
                  children: _activities(context, assignee: assignee),
                ),
              ],
            ),
          );
        },
      );
    });
  }

  List<Widget> _activities(
    BuildContext context, {
    required StaffMember assignee,
  }) {
    return assignee.activities.map((activity) {
      return Container(
        padding: const Pad(vertical: 5, horizontal: 10),
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
          activity.title,
          style: context.styles.footer1.copyWith(
            color: context.colors.background,
          ),
        ),
      );
    }).toList();
  }
}
