part of '../../../admin_clients_screen.dart';

class _SearchField extends StatelessWidget {
  const _SearchField();

  @override
  Widget build(BuildContext context) {
    final AdminClientsFiltersBloc bloc = context.read();

    return Expanded(
      child: AppTextField(
        hintText: 'Поиск по имени / псевдониму',
        prefixIcon: Assets.icons.search.light,
        onChanged: (value) => bloc.add(
          AdminClientsFiltersEvent.searchQueryChanged(value),
        ),
      ),
    );
  }
}
