part of '../../../../my_orders_feature.dart';

class _StatusSmall extends StatelessWidget {
  const _StatusSmall(this.status);

  final OrderStatus status;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(
            color: status.color,
            shape: BoxShape.circle,
          ),
        ),
        Text(
          status.title,
          style: context.styles.footer3.copyWith(
            color: context.colors.body,
          ),
        ),
      ],
    );
  }
}
