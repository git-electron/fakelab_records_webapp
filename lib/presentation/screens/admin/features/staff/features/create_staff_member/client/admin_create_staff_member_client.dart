import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:logger/logger.dart';

import '../../../../../../../../core/constants/mock.dart';
import '../../../../../../../../core/domain/models/result/result.dart';
import '../../../../../../../../main.dart';
import '../../../domain/models/staff_member.dart';

@injectable
class AdminCreateStaffMemberClient {
  AdminCreateStaffMemberClient(this.ref, this.logger);

  final Logger logger;
  final DatabaseReference ref;

  static const String _errorMessage = 'Failed to create staff member';

  Future<Result<StaffMember>> createStaffMember(StaffMember staffMember) async {
    if (isDevelopment) {
      Mock.staffMembers.add(staffMember);
      return Result.success(staffMember);
    }

    try {
      final String path = 'staff/${staffMember.id}';

      logger.i('''Realtime Database create request:
Path: $path
Data: $staffMember''');

      await ref.child(path).set(staffMember.toJson());

      return Result.success(staffMember);
    } catch (error) {
      logger.e(_errorMessage, error: error);
      return Result.error(error.toString());
    }
  }
}
