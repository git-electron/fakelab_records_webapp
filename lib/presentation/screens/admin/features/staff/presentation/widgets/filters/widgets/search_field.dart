part of '../../../admin_staff_screen.dart';

class _SearchField extends StatelessWidget {
  const _SearchField();

  @override
  Widget build(BuildContext context) {
    final AdminStaffFiltersBloc bloc = context.read();

    return _ExpandedWrapper(
      child: AppTextField(
        hintText: 'Поиск по имени / псевдониму',
        prefixIcon: Assets.icons.search.light,
        onChanged: (value) => bloc.add(
          AdminStaffFiltersEvent.searchQueryChanged(value),
        ),
      ),
    );
  }
}

class _ExpandedWrapper extends StatelessWidget {
  const _ExpandedWrapper({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    if (isMobile) return child;
    return Expanded(flex: 3, child: child);
  }
}
