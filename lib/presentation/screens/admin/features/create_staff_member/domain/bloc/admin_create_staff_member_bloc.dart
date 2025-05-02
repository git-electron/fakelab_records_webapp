import 'package:fakelab_records_webapp/core/extensions/string_extensions.dart';
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
    on<_SetLoading>(_onSetLoading);

    on<_FirstNameChanged>(_onFirstNameChanged);
    on<_LastNameChanged>(_onLastNameChanged);
    on<_UsernameChanged>(_onUsernameChanged);
    on<_AvatarChanged>(_onAvatarChanged);
  }

  final AdminStaffBloc adminOrdersBloc;

  Future<void> _onSetLoading(
    _SetLoading event,
    Emitter<AdminCreateStaffMemberState> emit,
  ) async {
    emit(state.copyWith(isLoading: event.isLoading));
  }

  Future<void> _onFirstNameChanged(
    _FirstNameChanged event,
    Emitter<AdminCreateStaffMemberState> emit,
  ) async {
    emit(state.copyWith(firstName: event.firstName));
  }

  Future<void> _onLastNameChanged(
    _LastNameChanged event,
    Emitter<AdminCreateStaffMemberState> emit,
  ) async {
    emit(state.copyWith(lastName: event.lastName));
  }

  Future<void> _onUsernameChanged(
    _UsernameChanged event,
    Emitter<AdminCreateStaffMemberState> emit,
  ) async {
    emit(state.copyWith(username: event.username));
  }

  Future<void> _onAvatarChanged(
    _AvatarChanged event,
    Emitter<AdminCreateStaffMemberState> emit,
  ) async {
    emit(state.copyWith(avatarFileUrl: event.fileUrl));
  }
}
