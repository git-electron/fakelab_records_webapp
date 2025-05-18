part of '../../../../my_orders_feature.dart';

class _InfoSmall extends StatelessWidget {
  const _InfoSmall(this.order);

  final Order order;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          order.idShort,
          style: context.styles.footer3.copyWith(
            color: context.colors.subtitle,
          ),
        ),
        Text(
          order.dateCreated.toDDmmYYYYwithMonths(withWords: true),
          style: context.styles.footer3.copyWith(
            color: context.colors.subtitle,
          ),
        ),
      ],
    );
  }
}
