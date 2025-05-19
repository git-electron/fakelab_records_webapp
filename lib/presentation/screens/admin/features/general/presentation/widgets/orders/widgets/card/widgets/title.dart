part of '../../../../../admin_general_screen.dart';

class _Title extends StatelessWidget {
  const _Title(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Text(
      title,
      style: _body(context, isMobile: isMobile)
          .copyWith(color: context.colors.body),
    );
  }

  TextStyle _body(BuildContext context, {required bool isMobile}) =>
      isMobile ? context.styles.body3 : context.styles.body1;
}
