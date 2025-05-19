part of '../../../../../admin_order_screen.dart';

class _ChangeTotalCost extends StatelessWidget with ChangeTotalCostDialogMixin {
  const _ChangeTotalCost(this.order);

  @override
  final Order order;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppButton.primary(
          text: 'Изменить стоимость',
          onTap: () => _onTap(context),
          icon: Assets.icons.money.dark,
        ),
      ],
    );
  }

  Future<void> _onTap(BuildContext context) async {
    final AdminOrderBloc bloc = context.read();

    final double? totalCost = await showChangeTotalCostDialog(context);

    if (totalCost == null) return;

    bloc.add(AdminOrderEvent.updateOrderTotalCost(totalCost));
  }
}
