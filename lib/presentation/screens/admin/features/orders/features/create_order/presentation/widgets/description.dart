part of '../admin_create_order_screen.dart';

class _Description extends StatelessWidget {
  const _Description();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      color: context.colors.background,
      child: Text(
        'Прежде чем добавлять заказ вручную, предложи заказчику зарегистрироваться в телеграм-боте',
        style: context.styles.body3,
      ),
    );
  }
}
