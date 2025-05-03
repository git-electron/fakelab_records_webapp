import 'package:fakelab_records_webapp/core/constants/mock.dart';
import 'package:fakelab_records_webapp/core/constants/types.dart';
import 'package:fakelab_records_webapp/core/domain/models/result/result.dart';
import 'package:fakelab_records_webapp/core/extensions/object_extensions.dart';
import 'package:fakelab_records_webapp/main.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/domain/models/staff_member.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:logger/logger.dart';

@injectable
class AdminStaffClient {
  AdminStaffClient(this.ref, this.logger);

  final Logger logger;
  final DatabaseReference ref;

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

      final List<StaffMember> staffMembers = json.values
          .map((staffMember) => StaffMember.fromJson(staffMember))
          .toList();

      return Result.success(staffMembers);
    } catch (error) {
      logger.e('Failed to get staff members', error: error);
      return Result.error(error.toString());
    }
  }

  Future<Result<bool>> deleteStaffMember(String staffMemberId) async {
    try {
      final String path = 'staff/$staffMemberId';

      logger.i('''Realtime Database delete request:
Path: $path''');

      await ref.child(path).remove();

      return Result.success(true);
    } catch (error) {
      logger.e('Failed to delete staff member', error: error);
      return Result.error();
    }
  }
}
