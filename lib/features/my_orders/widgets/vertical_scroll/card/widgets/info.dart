part of '../../../../my_orders_feature.dart';

class _Info extends StatelessWidget {
  const _Info(this.order);

  final Order order;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          order.idShort,
          style: context.styles.footer2.copyWith(
            color: context.colors.subtitle,
          ),
        ),
        Text(
          _dateTime(
            order.dateCreated.toDDmmYYYYwithMonths(
              withWords: true,
              isShort: false,
            ),
            order.dateCreated.toHHmm(shoudApplyPaddingToHours: true),
          ),
          style: context.styles.footer2.copyWith(
            color: context.colors.subtitle,
          ),
        ),
      ],
    );
  }

  String _dateTime(String date, String time) => '$date в $time';
}
