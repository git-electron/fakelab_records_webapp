part of '../../../../../admin_general_screen.dart';

class _Status extends StatelessWidget {
  const _Status(this.order);

  final Order order;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        OrderTileStatus(order.status),
        if (!isMobile) const CircleDivider(),
        if (!isMobile)
          Text(
            order.idShort,
            style: _topInfo(context, isMobile: isMobile)
                .copyWith(color: context.colors.subtitle),
          ),
        const CircleDivider(),
        Text(
          order.dateCreated.toDDmmYYYYwithMonths(withWords: true),
          style: _topInfo(context, isMobile: isMobile)
              .copyWith(color: context.colors.subtitle),
        ),
      ],
    );
  }

  TextStyle _topInfo(BuildContext context, {required bool isMobile}) =>
      isMobile ? context.styles.footer3 : context.styles.footer2;
}
