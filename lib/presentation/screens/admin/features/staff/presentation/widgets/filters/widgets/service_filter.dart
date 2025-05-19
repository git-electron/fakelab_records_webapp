part of '../../../admin_staff_screen.dart';

class _ServiceFilter extends StatelessWidget {
  const _ServiceFilter();

  @override
  Widget build(BuildContext context) {
    final AdminStaffFiltersBloc bloc = context.read();

    return Expanded(
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
    );
  }
}
