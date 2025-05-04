part of 'admin_edit_staff_member_bloc.dart';

@freezed
class AdminEditStaffMemberState with _$AdminEditStaffMemberState {
  const factory AdminEditStaffMemberState({
    @Default(false) bool isLoading,
    String? firstName,
    String? lastName,
    String? username,
    String? avatarFileUrl,
    Uint8List? avatarFileContent,
    @Default([]) List<StaffActivity> activities,
    @Default([]) List<StaffServiceType> services,
  }) = _AdminEditStaffMemberState;

  const AdminEditStaffMemberState._();

  static AdminEditStaffMemberState fromStaffMember(StaffMember staffMember) {
    return _AdminEditStaffMemberState(
      firstName: staffMember.firstName,
      lastName: staffMember.lastName,
      username: staffMember.username,
      avatarFileUrl: staffMember.photoUrl,
      activities: staffMember.activities,
      services: staffMember.services,
    );
  }

  bool get canProceed =>
      firstName.isNotNullAndEmpty &&
      lastName.isNotNullAndEmpty &&
      activities.isNotEmpty &&
      services.isNotEmpty;

  bool isActivitySelected(StaffActivity activity) =>
      activities.contains(activity);

  bool isServiceSelected(StaffServiceType service) =>
      services.contains(service);

  Future<StaffMember> updatedStaffMember(
    StaffMember staffMember, {
    required Cloudinary cloudinary,
  }) async {
    final String? photoUrl;
    if (avatarFileContent != null) {
      final String fileContentEncoded = base64.encode(avatarFileContent!);
      final String uploadData = 'data:image/jpeg;base64,$fileContentEncoded';

      final result = await cloudinary.uploader().upload(
            uploadData,
            params: UploadParams(
              publicId: staffMember.id,
              uniqueFilename: false,
              overwrite: true,
            ),
          );
      photoUrl = result?.data?.secureUrl;
    } else {
      photoUrl = null;
    }

    return staffMember.copyWith(
      firstName: firstName ?? staffMember.firstName,
      lastName: lastName ?? staffMember.lastName,
      username: username ?? staffMember.username,
      photoUrl: photoUrl ?? staffMember.photoUrl,
      activities: activities.isNotEmpty ? activities : staffMember.activities,
      services: services.isNotEmpty ? services : staffMember.services,
    );
  }
}
