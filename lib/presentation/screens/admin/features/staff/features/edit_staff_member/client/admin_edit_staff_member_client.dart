import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:logger/logger.dart';

import '../../../../../../../../core/constants/mock.dart';
import '../../../../../../../../core/domain/models/result/result.dart';
import '../../../../../../../../main.dart';
import '../../../domain/models/staff_member.dart';

@injectable
class AdminEditStaffMemberClient {
  AdminEditStaffMemberClient(this.ref, this.logger);

  final Logger logger;
  final DatabaseReference ref;

  static const String _errorMessage = 'Failed to update staff member';

  Future<Result<StaffMember>> updateStaffMember(StaffMember staffMember) async {
    if (isDevelopment) {
      final StaffMember? mockStaffMember = Mock.getStaffMember(staffMember.id);
      if (mockStaffMember != null) {
        return Result.success(staffMember);
      } else {
        return Result.error('Не удалось изменить сотрудника');
      }
    }

    try {
      final String path = 'staff/${staffMember.id}';

      logger.i('''Realtime Database update request:
Path: $path
Data: $staffMember''');

      await ref.child(path).update(staffMember.toJson());

      return Result.success(staffMember);
    } catch (error) {
      logger.e(_errorMessage, error: error);
      return Result.error(error.toString());
    }
  }
}
