part of 'admin_edit_staff_member_bloc.dart';

@freezed
class AdminEditStaffMemberEvent with _$AdminEditStaffMemberEvent {
  const factory AdminEditStaffMemberEvent.createButtonPressed() =
      _CreateButtonPressed;

  const factory AdminEditStaffMemberEvent.firstNameChanged(
    String firstName,
  ) = _FirstNameChanged;

  const factory AdminEditStaffMemberEvent.lastNameChanged(
    String lastName,
  ) = _LastNameChanged;

  const factory AdminEditStaffMemberEvent.usernameChanged(
    String username,
  ) = _UsernameChanged;

  const factory AdminEditStaffMemberEvent.avatarChanged(
    String? fileUrl,
  ) = _AvatarChanged;

  const factory AdminEditStaffMemberEvent.avatarContentChanged(
    Uint8List? fileContent,
  ) = _AvatarContentChanged;

  const factory AdminEditStaffMemberEvent.activitySelected(
    StaffActivity activity,
  ) = _ActivitySelected;

  const factory AdminEditStaffMemberEvent.serviceSelected(
    StaffServiceType service,
  ) = _ServiceSelected;
}
