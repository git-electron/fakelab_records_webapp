part of '../../../../../admin_orders_screen.dart';

class _PropertyTextSpan extends StatelessWidget {
  const _PropertyTextSpan({
    required this.icon,
    required this.children,
  });

  final SvgGenImage icon;
  final List<TextSpan> children;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Row(
      spacing: 5,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        icon.svg(
          height: isMobile ? 20 : 25,
          width: isMobile ? 20 : 25,
        ),
        Expanded(
          child: Text.rich(
            TextSpan(children: children),
            style: _footer(context, isMobile: isMobile)
                .copyWith(color: context.colors.body),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  TextStyle _footer(BuildContext context, {required bool isMobile}) =>
      isMobile ? context.styles.footer3 : context.styles.footer1;
}
