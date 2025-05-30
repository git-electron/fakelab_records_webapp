part of '../../../my_booking_screen.dart';

class _Profile extends StatelessWidget {
  const _Profile(this.assignee);

  final StaffMember assignee;

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
