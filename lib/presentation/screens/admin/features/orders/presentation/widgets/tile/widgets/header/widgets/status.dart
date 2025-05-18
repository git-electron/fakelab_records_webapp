part of '../../../../../admin_orders_screen.dart';

class _Status extends StatelessWidget {
  const _Status(this.status);

  final OrderStatus status;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: isMobile ? 15 : 20,
          width: isMobile ? 15 : 20,
          decoration: BoxDecoration(
            color: status.color,
            shape: BoxShape.circle,
          ),
        ),
        const Gap(5),
        Text(
          status.title,
          style: _topInfo(context, isMobile: isMobile)
              .copyWith(color: context.colors.body),
        ),
      ],
    );
  }

  TextStyle _topInfo(BuildContext context, {required bool isMobile}) =>
      isMobile ? context.styles.footer3 : context.styles.footer2;
}
