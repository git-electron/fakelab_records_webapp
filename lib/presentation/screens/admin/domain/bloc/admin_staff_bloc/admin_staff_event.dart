part of 'admin_staff_bloc.dart';

@freezed
class AdminStaffEvent with _$AdminStaffEvent {
  const factory AdminStaffEvent.setLoading() = _SetLoading;

  const factory AdminStaffEvent.setLoaded(List<StaffMember> staffMembers) =
      _SetLoaded;

  const factory AdminStaffEvent.setError(String? message) = _SetError;

  const factory AdminStaffEvent.deleteStaffMember(String staffMemberId) =
      _DeleteStaffMember;
}
