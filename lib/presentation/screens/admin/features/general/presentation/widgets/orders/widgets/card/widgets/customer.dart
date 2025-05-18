part of '../../../../../admin_general_screen.dart';

class _Customer extends StatelessWidget {
  const _Customer(this.customer);

  final User customer;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Expanded(
      child: OrderTilePropertyTextSpan(
        icon: Assets.icons.user.gray,
        children: [
          TextSpan(text: customer.fullName),
          if (customer.username.isNotNullAndEmpty)
            TextSpan(
              text: ' @${customer.username}',
              style: _footer(context, isMobile: isMobile),
            ),
        ],
      ),
    );
  }

  TextStyle _footer(BuildContext context, {required bool isMobile}) =>
      isMobile ? context.styles.footer3 : context.styles.footer1;
}
