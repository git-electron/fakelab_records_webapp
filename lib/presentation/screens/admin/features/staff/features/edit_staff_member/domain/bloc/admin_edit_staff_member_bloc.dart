import 'dart:convert';
import 'dart:typed_data';

import 'package:cloudinary_api/src/request/model/uploader_params.dart';
import 'package:cloudinary_api/uploader/cloudinary_uploader.dart';
import 'package:cloudinary_url_gen/cloudinary.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../../../../core/domain/models/result/result.dart';
import '../../../../../../../../../core/extensions/string_extensions.dart';
import '../../../../../../../../../core/router/router.dart';
import '../../../../../../domain/bloc/admin_staff_bloc/admin_staff_bloc.dart';
import '../../../../domain/models/staff_activity.dart';
import '../../../../domain/models/staff_member.dart';
import '../../../../domain/models/staff_service_type.dart';
import '../../client/admin_edit_staff_member_client.dart';
import '../models/admin_edit_staff_member_bloc_data.dart';

part 'admin_edit_staff_member_bloc.freezed.dart';
part 'admin_edit_staff_member_event.dart';
part 'admin_edit_staff_member_state.dart';

@injectable
class AdminEditStaffMemberBloc
    extends Bloc<AdminEditStaffMemberEvent, AdminEditStaffMemberState> {
  AdminEditStaffMemberBloc(
    this._router,
    this._cloudinary,
    this._adminEditStaffMemberClient,
    @factoryParam AdminEditStaffMemberBlocData data,
  )   : staffMember = data.staffMember,
        _adminStaffBloc = data.adminStaffBloc,
        super(AdminEditStaffMemberState.fromStaffMember(data.staffMember)) {
    on<_FirstNameChanged>(_onFirstNameChanged);
    on<_LastNameChanged>(_onLastNameChanged);
    on<_UsernameChanged>(_onUsernameChanged);
    on<_AvatarChanged>(_onAvatarChanged);
    on<_AvatarContentChanged>(_onAvatarContentChanged);
    on<_ActivitySelected>(_onActivitySelected);
    on<_ServiceSelected>(_onServiceSelected);

    on<_ConfirmButtonPressed>(_onConfirmButtonPressed);
    on<_DeleteButtonPressed>(_onDeleteButtonPressed);
  }

  final StaffMember staffMember;

  final AppRouter _router;
  final Cloudinary _cloudinary;
  final AdminStaffBloc _adminStaffBloc;
  final AdminEditStaffMemberClient _adminEditStaffMemberClient;

  Future<void> _onFirstNameChanged(
    _FirstNameChanged event,
    Emitter<AdminEditStaffMemberState> emit,
  ) async {
    emit(state.copyWith(firstName: event.firstName));
  }

  Future<void> _onLastNameChanged(
    _LastNameChanged event,
    Emitter<AdminEditStaffMemberState> emit,
  ) async {
    emit(state.copyWith(lastName: event.lastName));
  }

  Future<void> _onUsernameChanged(
    _UsernameChanged event,
    Emitter<AdminEditStaffMemberState> emit,
  ) async {
    emit(state.copyWith(username: event.username));
  }

  Future<void> _onAvatarChanged(
    _AvatarChanged event,
    Emitter<AdminEditStaffMemberState> emit,
  ) async {
    emit(state.copyWith(avatarFileUrl: event.fileUrl));
  }

  Future<void> _onAvatarContentChanged(
    _AvatarContentChanged event,
    Emitter<AdminEditStaffMemberState> emit,
  ) async {
    emit(state.copyWith(avatarFileContent: event.fileContent));
  }

  Future<void> _onActivitySelected(
    _ActivitySelected event,
    Emitter<AdminEditStaffMemberState> emit,
  ) async {
    final bool isSelected = state.isActivitySelected(event.activity);
    final List<StaffActivity> newActivities = isSelected
        ? state.activities
            .where((activity) => activity != event.activity)
            .toList()
        : [...state.activities, event.activity];

    emit(state.copyWith(activities: newActivities));
  }

  Future<void> _onServiceSelected(
    _ServiceSelected event,
    Emitter<AdminEditStaffMemberState> emit,
  ) async {
    final bool isSelected = state.isServiceSelected(event.service);
    final List<StaffServiceType> newServices = isSelected
        ? state.services.where((service) => service != event.service).toList()
        : [...state.services, event.service];

    emit(state.copyWith(services: newServices));
  }

  Future<void> _onConfirmButtonPressed(
    _ConfirmButtonPressed event,
    Emitter<AdminEditStaffMemberState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final StaffMember updatedStaffMember =
        await state.updatedStaffMember(staffMember, cloudinary: _cloudinary);

    final Result<StaffMember> result =
        await _adminEditStaffMemberClient.updateStaffMember(updatedStaffMember);
    result.when(
      success: (updatedStaffMember) {
        emit(state.copyWith(isLoading: false));
        if (_adminStaffBloc.state.isLoaded) {
          final List<StaffMember> updatedStaffMembers =
              _adminStaffBloc.state.staffMembers!.map((staffMember) {
            if (staffMember.id == updatedStaffMember.id) {}
            return staffMember.id == updatedStaffMember.id
                ? updatedStaffMember
                : staffMember;
          }).toList();

          _adminStaffBloc.add(AdminStaffEvent.setLoaded(updatedStaffMembers));
          _router.pop();
        }
      },
      error: (message) => emit(state.copyWith(isLoading: false)),
    );
  }

  Future<void> _onDeleteButtonPressed(
    _DeleteButtonPressed event,
    Emitter<AdminEditStaffMemberState> emit,
  ) async {
    _router.pop();
    _adminStaffBloc.add(AdminStaffEvent.deleteStaffMember(staffMember.id));
  }
}
