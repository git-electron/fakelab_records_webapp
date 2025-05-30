part of '../../../my_order_screen.dart';

class _Id extends StatelessWidget {
  const _Id(this.orderId);

  final String orderId;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: ShapeDecoration(
        color: context.colors.card,
        shape: BorderRadius.circular(20).smoothShape(),
      ),
      padding: const Pad(all: 20),
      child: _Content(orderId),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content(this.orderId);

  final String orderId;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          spacing: 5,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Номер заказа', style: context.styles.body1),
            Text('#$orderId', style: context.styles.footer1),
          ],
        ),
        Tappable(
          onTap: () => _onCopyButtonTap(context),
          child: Assets.icons.copy.light.svg(height: 30, width: 30),
        ),
      ],
    );
  }

  void _onCopyButtonTap(BuildContext context) {
    Clipboard.setData(ClipboardData(text: orderId));
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Скопировано')),
    );
  }
}
