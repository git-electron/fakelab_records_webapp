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

  bool get canProceed =>
      firstName.isNotNullAndEmpty &&
      lastName.isNotNullAndEmpty &&
      activities.isNotEmpty &&
      services.isNotEmpty;

  bool isActivitySelected(StaffActivity activity) =>
      activities.contains(activity);

  bool isServiceSelected(StaffServiceType service) =>
      services.contains(service);

  Future<StaffMember> staffMember({
    required IdGenerator idGenerator,
    required Cloudinary cloudinary,
  }) async {
    final String id = idGenerator.generate();

    final String? photoUrl;
    if (avatarFileContent != null) {
      final String fileContentEncoded = base64.encode(avatarFileContent!);
      final String uploadData = 'data:image/jpeg;base64,$fileContentEncoded';

      final result = await cloudinary.uploader().upload(
            uploadData,
            params: UploadParams(
              publicId: id,
              uniqueFilename: false,
              overwrite: true,
            ),
          );
      photoUrl = result?.data?.secureUrl;
    } else {
      photoUrl = null;
    }

    return StaffMember(
      id: id,
      firstName: firstName ?? '',
      lastName: lastName,
      username: username,
      activities: activities,
      services: services,
      photoUrl: photoUrl,
    );
  }
}
