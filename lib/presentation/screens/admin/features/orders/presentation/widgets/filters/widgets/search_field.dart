part of '../../../admin_orders_screen.dart';

class _SearchField extends StatelessWidget {
  const _SearchField();

  @override
  Widget build(BuildContext context) {
    final AdminOrdersFiltersBloc bloc = context.read();

    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return _ExpandedWrapper(
      child: AppTextField(
        hintText: _hintText(isMobile),
        prefixIcon: Assets.icons.search.light,
        onChanged: (value) => bloc.add(
          AdminOrdersFiltersEvent.searchQueryChanged(value),
        ),
      ),
    );
  }

  String _hintText(bool isMobile) =>
      'Поиск по имени / юзернейму${isMobile ? '' : ' / айди пользователя'} / айди заказа';
}

class _ExpandedWrapper extends StatelessWidget {
  const _ExpandedWrapper({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Expanded(flex: isMobile ? 1 : 3, child: child);
  }
}
