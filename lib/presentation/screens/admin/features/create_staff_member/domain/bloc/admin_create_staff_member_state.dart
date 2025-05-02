part of 'admin_create_staff_member_bloc.dart';

@freezed
class AdminCreateStaffMemberState with _$AdminCreateStaffMemberState {
  const factory AdminCreateStaffMemberState({
    @Default(false) bool isLoading,
  }) = _AdminCreateStaffMemberState;
}
