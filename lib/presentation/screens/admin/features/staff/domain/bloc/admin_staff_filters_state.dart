part of 'admin_staff_filters_bloc.dart';

@freezed
class AdminStaffFiltersState with _$AdminStaffFiltersState {
  const factory AdminStaffFiltersState({
    String? searchQuery,
    OrderServiceType? serviceType,
  }) = _AdminStaffFiltersState;

  const AdminStaffFiltersState._();

  List<StaffMember> filteredStaffMembers(List<StaffMember>? staffMembers) {
    final List<StaffMember>? filtered = staffMembers?.where((staffMember) {
      bool isProperServiceType = true;
      bool isProperSearchQuery = true;

      if (serviceType != null) {
        isProperServiceType = staffMember.services.contains(serviceType);
      }
      if (searchQuery.isNotNullAndEmpty) {
        final bool isProperFullName = staffMember.fullName
            .toLowerCase()
            .contains(searchQuery!.toLowerCase());

        final bool isProperUsername = staffMember.username
                ?.toLowerCase()
                .contains(searchQuery!.toLowerCase()) ??
            false;

        isProperSearchQuery = isProperFullName || isProperUsername;
      }

      return isProperServiceType && isProperSearchQuery;
    }).toList();

    return filtered ?? staffMembers ?? [];
  }
}
