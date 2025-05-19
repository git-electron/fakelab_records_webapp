import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:logger/logger.dart';

import '../../../../core/constants/mock.dart';
import '../../../../core/constants/types.dart';
import '../../../../core/domain/models/result/result.dart';
import '../../../../core/extensions/object_extensions.dart';
import '../../../../main.dart';
import '../features/staff/domain/models/staff_member.dart';

@injectable
class AdminStaffClient {
  AdminStaffClient(this.ref, this.logger);

  final Logger logger;
  final DatabaseReference ref;

  static const String _staffMembersErrorMessage = 'Failed to get staff members';

  Future<Result<List<StaffMember>>> getStaffMembers() async {
    if (isDevelopment) return Result.success(Mock.staffMembers);

    try {
      const String path = 'staff';

      final DataSnapshot snapshot = await ref.child(path).get();

      final Json? json = snapshot.value.firebaseResponseToJson();

      logger.i('''Realtime Database request:
Path: $path
Data: $json''');

      if (json == null) return Result.success([]);

      final List<StaffMember> staffMembers =
          json.values.map(StaffMember.maybeFromJson).toList();

      return Result.success(staffMembers);
    } catch (error) {
      logger.e(_staffMembersErrorMessage, error: error);
      return Result.error(error.toString());
    }
  }

  static const String _deleteStaffMemberErrorMessage =
      'Failed to delete staff member';

  Future<Result<bool>> deleteStaffMember(String staffMemberId) async {
    try {
      final String path = 'staff/$staffMemberId';

      logger.i('''Realtime Database delete request:
Path: $path''');

      await ref.child(path).remove();

      return Result.success(true);
    } catch (error) {
      logger.e(_deleteStaffMemberErrorMessage, error: error);
      return Result.error();
    }
  }
}
