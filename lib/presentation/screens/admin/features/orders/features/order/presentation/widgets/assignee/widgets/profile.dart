part of '../../../admin_order_screen.dart';

class _Profile extends StatelessWidget {
  const _Profile(this.assignee);

  final StaffMember assignee;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Row(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (assignee.photoUrl.isNotNullAndEmpty)
          Avatar(
            photoUrl: assignee.photoUrl!,
            size: isMobile ? 40 : 50,
          ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              assignee.fullName,
              style: isMobile ? context.styles.body3 : context.styles.body1,
            ),
            if (assignee.username.isNotNullAndEmpty)
              Text(
                assignee.username!,
                style:
                    isMobile ? context.styles.footer2 : context.styles.footer1,
              ),
          ],
        ),
      ],
    );
  }
}
