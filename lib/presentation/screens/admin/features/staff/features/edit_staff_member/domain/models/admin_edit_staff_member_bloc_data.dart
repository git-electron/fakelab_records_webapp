import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../domain/bloc/admin_staff_bloc/admin_staff_bloc.dart';
import '../../../../domain/models/staff_member.dart';

part 'admin_edit_staff_member_bloc_data.freezed.dart';

@freezed
class AdminEditStaffMemberBlocData with _$AdminEditStaffMemberBlocData {
  const factory AdminEditStaffMemberBlocData({
    required StaffMember staffMember,
    required AdminStaffBloc adminStaffBloc,
  }) = _AdminEditStaffMemberBlocData;
}
