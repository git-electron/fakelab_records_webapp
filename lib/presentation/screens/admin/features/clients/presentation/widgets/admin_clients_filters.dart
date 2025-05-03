import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/gen/assets.gen.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_clients_bloc/admin_clients_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/clients/domain/bloc/admin_clients_filters_bloc.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_button.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:flutter/material.dart';

class AdminClientsFilters extends StatelessWidget {
  const AdminClientsFilters({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Padding(
      padding: const Pad(horizontal: 20),
      child: Column(
        children: [
          if (isMobile) _searchTextField(context),
          if (isMobile) const Gap(10),
          Row(
            children: [
              if (!isMobile)
                Expanded(
                  flex: 3,
                  child: _searchTextField(context),
                ),
              if (!isMobile) const Gap(10),
              const Gap(10),
              _addClient(context),
            ],
          ),
        ],
      ),
    );
  }

  Widget _searchTextField(BuildContext context) {
    final AdminClientsFiltersBloc bloc = context.read();

    return AppTextField(
      hintText: 'Поиск по имени / псевдониму',
      prefixIcon: Assets.icons.search.light,
      onChanged: (value) => bloc.add(
        AdminClientsFiltersEvent.searchQueryChanged(value),
      ),
    );
  }

  Widget _addClient(BuildContext context) {
    final AdminClientsBloc bloc = context.read();

    return AppButton.primary(
      // onTap: () => context.pushRoute(
      //   AdminCreateClientRoute(adminClientsBloc: bloc),
      // ),
      onTap: () {},
      text: 'Добавить',
      isExpanded: false,
      icon: Assets.icons.plus.dark,
    );
  }
}
