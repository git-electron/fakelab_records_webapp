part of '../../../../../../admin_order_screen.dart';

class _RequestActions extends StatelessWidget {
  const _RequestActions(this.order);

  final Order order;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return isMobile
        ? Row(spacing: 5, children: _actions)
        : Column(spacing: 5, children: _actions);
  }

  List<Widget> get _actions => [
        _ConfirmRequest(order),
        _CancelRequest(order),
      ];
}
