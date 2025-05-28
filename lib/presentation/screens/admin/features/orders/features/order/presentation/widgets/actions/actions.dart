part of '../../admin_order_screen.dart';

class _Actions extends StatelessWidget {
  const _Actions();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Container(
      width: double.maxFinite,
      decoration: ShapeDecoration(
        color: context.colors.card,
        shape: BorderRadius.circular(20).smoothShape(),
      ),
      padding: const Pad(all: 20),
      child: BlocBuilder<AdminOrderBloc, AdminOrderState>(
        builder: (context, state) {
          final List<Widget> actions = _getActions(state);

          return Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Действия', style: context.styles.body1),
              if (isMobile) ...actions,
              if (!isMobile) Row(spacing: 10, children: actions),
            ],
          );
        },
      ),
    );
  }

  List<Widget> _getActions(AdminOrderState state) => [
        if (state.hasActualActions) _ActualActions(state.order!),
        _AllActions(state.order!),
      ];
}

enum _ExpandedWrapperType { mobile, desktop }

class _ExpandedWrapper extends StatelessWidget {
  const _ExpandedWrapper.mobile({required this.child})
      : type = _ExpandedWrapperType.mobile;

  const _ExpandedWrapper.desktop({required this.child})
      : type = _ExpandedWrapperType.desktop;

  final Widget child;
  final _ExpandedWrapperType type;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;
    final bool shouldExpand = switch (type) {
      _ExpandedWrapperType.mobile => isMobile,
      _ExpandedWrapperType.desktop => !isMobile,
    };

    return shouldExpand ? Expanded(child: child) : child;
  }
}
