import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../domain/bloc/admin_staff_bloc/admin_staff_bloc.dart';

part 'admin_create_staff_member_bloc_data.freezed.dart';

@freezed
class AdminCreateStaffMemberBlocData with _$AdminCreateStaffMemberBlocData {
  const factory AdminCreateStaffMemberBlocData({
    required AdminStaffBloc adminStaffBloc,
  }) = _AdminCreateStaffMemberBlocData;
}
