part of 'admin_staff_filters_bloc.dart';

@freezed
class AdminStaffFiltersState with _$AdminStaffFiltersState {
  const factory AdminStaffFiltersState({
    String? searchQuery,
    OrderServiceType? serviceType,
  }) = _AdminStaffFiltersState;

  const AdminStaffFiltersState._();

  List<StaffUser> filteredUsers(List<StaffUser>? staffUsers) {
    final List<StaffUser>? filtered = staffUsers?.where((staffUser) {
      bool isProperServiceType = true;
      bool isProperSearchQuery = true;

      if (serviceType != null) {
        isProperServiceType = staffUser.services.contains(serviceType);
      }
      if (searchQuery.isNotNullAndEmpty) {
        final bool isProperFullName = staffUser.fullName
            .toLowerCase()
            .contains(searchQuery!.toLowerCase());

        final bool isProperUsername = staffUser.username
                ?.toLowerCase()
                .contains(searchQuery!.toLowerCase()) ??
            false;

        isProperSearchQuery = isProperFullName || isProperUsername;
      }

      return isProperServiceType && isProperSearchQuery;
    }).toList();

    return filtered ?? staffUsers ?? [];
  }
}
