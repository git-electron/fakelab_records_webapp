import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_staff_bloc/admin_staff_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'admin_create_staff_member_event.dart';
part 'admin_create_staff_member_state.dart';
part 'admin_create_staff_member_bloc.freezed.dart';

@injectable
class AdminCreateStaffMemberBloc
    extends Bloc<AdminCreateStaffMemberEvent, AdminCreateStaffMemberState> {
  AdminCreateStaffMemberBloc(this.adminOrdersBloc)
      : super(const _AdminCreateStaffMemberState()) {
    on<AdminCreateStaffMemberEvent>((event, emit) {
      // TODO: implement event handler
    });
  }

  final AdminStaffBloc adminOrdersBloc;
}
