part of '../../../admin_order_screen.dart';

class _CustomerHeader extends StatelessWidget {
  const _CustomerHeader(this.customer);

  final User customer;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Заказчик', style: context.styles.body1),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(text: customer.fullName),
              if (customer.username.isNotNullAndEmpty)
                TextSpan(
                  text: ' @${customer.username}',
                  style: context.styles.footer1,
                ),
            ],
          ),
          style: context.styles.footer1.copyWith(
            color: context.colors.onBackground,
          ),
        ),
      ],
    );
  }
}
