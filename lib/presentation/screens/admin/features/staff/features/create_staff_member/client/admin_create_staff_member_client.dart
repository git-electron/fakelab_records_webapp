import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:logger/logger.dart';

import '../../../../../../../../core/constants/mock.dart';
import '../../../../../../../../core/domain/models/result/result.dart';
import '../../../../../../../../main.dart';
import '../../../domain/models/staff_member.dart';

@injectable
class AdminCreateStaffMemberClient {
  AdminCreateStaffMemberClient(this._ref, this._logger);

  final Logger _logger;
  final DatabaseReference _ref;

  static const String _errorMessage = 'Failed to create staff member';

  Future<Result<StaffMember>> createStaffMember(StaffMember staffMember) async {
    if (isDevelopment) {
      Mock.staffMembers.add(staffMember);
      return Result.success(staffMember);
    }

    try {
      final String path = 'staff/${staffMember.id}';

      _logger.i('''Realtime Database create request:
Path: $path
Data: $staffMember''');

      await _ref.child(path).set(staffMember.toJson());

      return Result.success(staffMember);
    } catch (error) {
      _logger.e(_errorMessage, error: error);
      return Result.error(error.toString());
    }
  }
}
