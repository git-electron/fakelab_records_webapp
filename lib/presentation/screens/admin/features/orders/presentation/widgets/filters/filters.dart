part of '../../admin_orders_screen.dart';

class _Filters extends StatelessWidget {
  const _Filters();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Padding(
      padding: const Pad(horizontal: 20),
      child: Column(
        spacing: 10,
        children: [
          if (isMobile)
            const Row(
              spacing: 10,
              children: [
                _SearchField(),
                _DateRangeButton(),
              ],
            ),
          Row(
            spacing: 10,
            children: [
              if (!isMobile) const _DateRangeButton(),
              if (!isMobile) const _SearchField(),
              const _TypeFilter(),
              const _StatusFilter(),
              if (!isMobile) _createManually(context),
            ],
          ),
          if (isMobile) _createManually(context),
        ],
      ),
    );
  }

  Widget _createManually(BuildContext context) {
    return AppButton.primary(
      onTap: () => context.pushRoute(AdminCreateOrderRoute(
        adminOrdersBloc: context.read(),
        adminClientsBloc: context.read(),
      )),
      text: 'Создать',
      isExpanded: false,
      icon: Assets.icons.plus.dark,
    );
  }
}
