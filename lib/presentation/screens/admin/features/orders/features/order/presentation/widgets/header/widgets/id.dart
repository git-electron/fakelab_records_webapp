part of '../../../admin_order_screen.dart';

class _Id extends StatelessWidget {
  const _Id(this.orderId);

  final String orderId;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: context.colors.card,
        shape: BorderRadius.circular(20).smoothShape(),
      ),
      padding: const Pad(all: 20),
      child: Row(
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
            onTap: () {
              Clipboard.setData(ClipboardData(text: orderId));
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Скопировано')),
              );
            },
            child: Assets.icons.copy.light.svg(height: 30, width: 30),
          ),
        ],
      ),
    );
  }
}
