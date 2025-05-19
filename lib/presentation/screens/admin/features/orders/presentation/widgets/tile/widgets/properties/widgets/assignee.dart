part of '../../../../../admin_orders_screen.dart';

class _Assignee extends StatelessWidget {
  const _Assignee(this.assignee);

  final StaffMember? assignee;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    if (isMobile) return const SizedBox();
    if (assignee == null) return const Expanded(child: SizedBox());

    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (assignee!.photoUrl.isNotNullAndEmpty)
            Padding(
              padding: const Pad(right: 10),
              child: Avatar(
                photoUrl: assignee!.photoUrl!,
                size: isMobile ? 20 : 30,
              ),
            ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  assignee!.fullName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: _footer(context, isMobile: isMobile)
                      .copyWith(color: context.colors.body),
                ),
                if (assignee!.username.isNotNullAndEmpty)
                  Text(
                    assignee!.username!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: _footer(context, isMobile: isMobile),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextStyle _footer(BuildContext context, {required bool isMobile}) =>
      isMobile ? context.styles.footer3 : context.styles.footer1;
}
