part of '../../../../../admin_staff_screen.dart';

class _Details extends StatelessWidget {
  const _Details(this.staffMember);

  final StaffMember staffMember;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Expanded(
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
    );
  }

  TextStyle _body(BuildContext context, {required bool isMobile}) =>
      isMobile ? context.styles.body3 : context.styles.body1;

  TextStyle _footer(BuildContext context, {required bool isMobile}) =>
      isMobile ? context.styles.footer2 : context.styles.footer1;
}
