part of '../../../../../admin_orders_screen.dart';

class _Title extends StatelessWidget {
  const _Title(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Expanded(
      flex: isMobile ? 2 : 4,
      child: Text(
        title,
        style: _body(context, isMobile: isMobile),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  TextStyle _body(BuildContext context, {required bool isMobile}) =>
      isMobile ? context.styles.body3 : context.styles.body1;
}
