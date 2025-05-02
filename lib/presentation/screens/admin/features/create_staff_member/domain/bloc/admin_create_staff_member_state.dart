part of 'admin_create_staff_member_bloc.dart';

@freezed
class AdminCreateStaffMemberState with _$AdminCreateStaffMemberState {
  const factory AdminCreateStaffMemberState({
    @Default(false) bool isLoading,
    String? firstName,
    String? lastName,
    String? username,
    String? avatarFileUrl,
  }) = _AdminCreateStaffMemberState;

  const AdminCreateStaffMemberState._();

  bool get canProceed =>
      firstName.isNotNullAndEmpty && lastName.isNotNullAndEmpty;
}
