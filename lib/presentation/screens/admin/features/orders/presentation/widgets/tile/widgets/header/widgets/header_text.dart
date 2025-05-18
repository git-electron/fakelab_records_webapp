part of '../../../../../admin_orders_screen.dart';

class _HeaderText extends StatelessWidget {
  const _HeaderText(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Text(
      text,
      style: _topInfo(context, isMobile: isMobile)
          .copyWith(color: context.colors.subtitle),
    );
  }

  TextStyle _topInfo(BuildContext context, {required bool isMobile}) =>
      isMobile ? context.styles.footer3 : context.styles.footer2;
}
