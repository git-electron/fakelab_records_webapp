part of 'admin_staff_filters_bloc.dart';

@freezed
class AdminStaffFiltersEvent with _$AdminStaffFiltersEvent {
  const factory AdminStaffFiltersEvent.searchQueryChanged(
    String? query,
  ) = _SearchQueryChanged;
  
  const factory AdminStaffFiltersEvent.serviceTypeFilterChanged(
    OrderServiceType? serviceType,
  ) = _ServiceTypeFilterChanged;
}
