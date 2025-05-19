part of '../../../../admin_order_screen.dart';

class _AllActions extends StatelessWidget {
  const _AllActions(this.order);

  final Order order;

  @override
  Widget build(BuildContext context) {
    return _ExpandedWrapper.desktop(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Все действия', style: context.styles.footer1),
          const Gap(10),
          const AllActions(),
        ],
      ),
    );
  }
}
