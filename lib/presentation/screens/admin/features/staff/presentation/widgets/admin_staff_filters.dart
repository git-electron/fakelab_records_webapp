import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fakelab_records_webapp/core/gen/assets.gen.dart';
import 'package:fakelab_records_webapp/core/router/router.gr.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/domain/bloc/admin_staff_filters_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/domain/models/staff_service_type.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_button.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_dropdown_button.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:flutter/material.dart';

class AdminStaffFilters extends StatelessWidget {
  const AdminStaffFilters({super.key});

  @override
  Widget build(BuildContext context) {
    final AdminStaffFiltersBloc bloc = context.read();

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
              Expanded(
                child: AppDropdownButton(
                  items: StaffServiceType.values
                      .map((status) => DropdownButtonItem(
                            title: status.title,
                            value: status,
                          ))
                      .toList(),
                  hintText: 'Услуга',
                  onChanged: (serviceType) => bloc.add(
                    AdminStaffFiltersEvent.serviceTypeFilterChanged(
                      serviceType,
                    ),
                  ),
                ),
              ),
              const Gap(10),
              _addStaffMember(context),
            ],
          ),
        ],
      ),
    );
  }

  Widget _searchTextField(BuildContext context) {
    final AdminStaffFiltersBloc bloc = context.read();

    return AppTextField(
      hintText: 'Поиск по имени / юзернейму',
      prefixIcon: Assets.icons.search.light,
      onChanged: (value) => bloc.add(
        AdminStaffFiltersEvent.searchQueryChanged(value),
      ),
    );
  }

  Widget _addStaffMember(BuildContext context) {
    return AppButton.primary(
      onTap: () => context.pushRoute(const AdminCreateStaffMemberRoute()),
      text: 'Добавить',
      isExpanded: false,
      icon: Assets.icons.plus.dark,
    );
  }
}
