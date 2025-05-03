part of 'admin_create_staff_member_bloc.dart';

@freezed
class AdminCreateStaffMemberEvent with _$AdminCreateStaffMemberEvent {
  const factory AdminCreateStaffMemberEvent.createButtonPressed() =
      _CreateButtonPressed;

  const factory AdminCreateStaffMemberEvent.firstNameChanged(
    String firstName,
  ) = _FirstNameChanged;

  const factory AdminCreateStaffMemberEvent.lastNameChanged(
    String lastName,
  ) = _LastNameChanged;

  const factory AdminCreateStaffMemberEvent.usernameChanged(
    String username,
  ) = _UsernameChanged;

  const factory AdminCreateStaffMemberEvent.avatarChanged(
    String? fileUrl,
  ) = _AvatarChanged;

  const factory AdminCreateStaffMemberEvent.avatarContentChanged(
    Uint8List? fileContent,
  ) = _AvatarContentChanged;

  const factory AdminCreateStaffMemberEvent.activitySelected(
    StaffActivity activity,
  ) = _ActivitySelected;

  const factory AdminCreateStaffMemberEvent.serviceSelected(
    StaffServiceType service,
  ) = _ServiceSelected;
}
