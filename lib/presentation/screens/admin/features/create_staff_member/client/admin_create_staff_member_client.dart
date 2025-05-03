import 'package:fakelab_records_webapp/core/domain/models/result/result.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/domain/models/staff_member.dart';

import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:logger/logger.dart';

@injectable
class AdminCreateStaffMemberClient {
  AdminCreateStaffMemberClient(this.ref, this.logger);

  final Logger logger;
  final DatabaseReference ref;

  Future<Result<StaffMember>> createStaffMember(StaffMember staffMember) async {
    try {
      final String path = 'staff/${staffMember.id}';

      logger.i('''Realtime Database create request:
Path: $path
Data: $staffMember''');

      await ref.child(path).set(staffMember.toJson());

      return Result.success(staffMember);
    } catch (error) {
      logger.e('Failed to create staff member', error: error);
      return Result.error(error.toString());
    }
  }
}
