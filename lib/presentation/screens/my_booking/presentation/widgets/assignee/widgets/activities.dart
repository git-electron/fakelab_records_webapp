part of '../../../my_booking_screen.dart';

class _Activities extends StatelessWidget {
  const _Activities(this.assignee);

  final StaffMember assignee;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5,
      runSpacing: 5,
      children: _activities,
    );
  }

  List<Widget> get _activities {
    return assignee.activities.map((activity) {
      return Builder(builder: (context) {
        return Container(
          padding: const Pad(vertical: 5, horizontal: 10),
          decoration: ShapeDecoration(
            color: context.colors.onBackground,
            shape: BorderRadius.circular(8).smoothShape(),
          ),
          child: Text(
            activity.title,
            style: context.styles.footer1.copyWith(
              color: context.colors.background,
            ),
          ),
        );
      });
    }).toList();
  }
}
