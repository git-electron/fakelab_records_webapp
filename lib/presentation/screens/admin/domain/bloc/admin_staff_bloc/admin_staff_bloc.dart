import 'package:fakelab_records_webapp/core/domain/bloc/user_bloc/user_bloc.dart';
import 'package:fakelab_records_webapp/core/domain/models/result/result.dart';
import 'package:fakelab_records_webapp/core/utils/try_or/try_or_null.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/client/admin_staff_client.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/domain/models/staff_member.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'admin_staff_event.dart';
part 'admin_staff_state.dart';
part 'admin_staff_bloc.freezed.dart';

@injectable
class AdminStaffBloc extends Bloc<AdminStaffEvent, AdminStaffState> {
  AdminStaffBloc(this.userBloc, this.adminStaffClient)
      : super(const _Loading()) {
    on<_SetLoading>(_onSetLoading);
    on<_SetLoaded>(_onSetLoaded);
    on<_SetError>(_onSetError);
    on<_DeleteStaffMember>(_onDeleteStaffMember);

    tryOrNullAsync(_getStaffMembers);
  }

  final UserBloc userBloc;
  final AdminStaffClient adminStaffClient;

  Future<void> _onSetLoading(
    _SetLoading event,
    Emitter<AdminStaffState> emit,
  ) async {
    emit(const AdminStaffState.loading());
  }

  Future<void> _onSetLoaded(
    _SetLoaded event,
    Emitter<AdminStaffState> emit,
  ) async {
    emit(AdminStaffState.loaded(event.staffMembers));
  }

  Future<void> _onSetError(
    _SetError event,
    Emitter<AdminStaffState> emit,
  ) async {
    emit(AdminStaffState.error(event.message));
  }

  Future<void> _onDeleteStaffMember(
    _DeleteStaffMember event,
    Emitter<AdminStaffState> emit,
  ) async {
    _deleteStaffMember(event.staffMemberId);
  }

  Future<void> _getStaffMembers() async {
    if (!userBloc.state.user!.isAdmin) return;

    add(const AdminStaffEvent.setLoading());
    final Result<List<StaffMember>> result =
        await adminStaffClient.getStaffMembers();
    result.when(
      success: (staffMembers) => add(AdminStaffEvent.setLoaded(staffMembers)),
      error: (message) => add(AdminStaffEvent.setError(message)),
    );
  }

  Future<void> _deleteStaffMember(String staffMemberId) async {
    if (!userBloc.state.user!.isAdmin) return;

    add(const AdminStaffEvent.setLoading());
    final Result<bool> result =
        await adminStaffClient.deleteStaffMember(staffMemberId);
    result.when(
      success: (_) {
        final List<StaffMember> staffMembers = state.staffMembers!
            .where((staffMember) => staffMember.id != staffMemberId)
            .toList();
        add(AdminStaffEvent.setLoaded(staffMembers));
      },
      error: (message) => add(AdminStaffEvent.setError(message)),
    );
  }
}
