import 'dart:convert';
import 'dart:typed_data';

import 'package:cloudinary_url_gen/cloudinary.dart';
import 'package:fakelab_records_webapp/core/domain/models/result/result.dart';
import 'package:fakelab_records_webapp/core/extensions/string_extensions.dart';
import 'package:fakelab_records_webapp/core/router/router.dart';
import 'package:fakelab_records_webapp/core/utils/id_generator/id_generator.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_staff_bloc/admin_staff_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/create_staff_member/client/admin_create_staff_member_client.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/domain/models/staff_activity.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/domain/models/staff_member.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/domain/models/staff_service_type.dart';
import 'package:cloudinary_api/uploader/cloudinary_uploader.dart';
import 'package:cloudinary_api/src/request/model/uploader_params.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'admin_create_staff_member_event.dart';
part 'admin_create_staff_member_state.dart';
part 'admin_create_staff_member_bloc.freezed.dart';

@injectable
class AdminCreateStaffMemberBloc
    extends Bloc<AdminCreateStaffMemberEvent, AdminCreateStaffMemberState> {
  AdminCreateStaffMemberBloc(
    @factoryParam this.adminStaffBloc,
    this.router,
    this.cloudinary,
    this.idGenerator,
    this.adminCreateStaffMemberClient,
  ) : super(const _AdminCreateStaffMemberState()) {
    on<_FirstNameChanged>(_onFirstNameChanged);
    on<_LastNameChanged>(_onLastNameChanged);
    on<_UsernameChanged>(_onUsernameChanged);
    on<_AvatarChanged>(_onAvatarChanged);
    on<_AvatarContentChanged>(_onAvatarContentChanged);
    on<_ActivitySelected>(_onActivitySelected);
    on<_ServiceSelected>(_onServiceSelected);

    on<_CreateButtonPressed>(_onCreateButtonPressed);
  }

  final AppRouter router;
  final Cloudinary cloudinary;
  final IdGenerator idGenerator;
  final AdminStaffBloc adminStaffBloc;
  final AdminCreateStaffMemberClient adminCreateStaffMemberClient;

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

  Future<void> _onAvatarContentChanged(
    _AvatarContentChanged event,
    Emitter<AdminCreateStaffMemberState> emit,
  ) async {
    emit(state.copyWith(avatarFileContent: event.fileContent));
  }

  Future<void> _onActivitySelected(
    _ActivitySelected event,
    Emitter<AdminCreateStaffMemberState> emit,
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
    Emitter<AdminCreateStaffMemberState> emit,
  ) async {
    final bool isSelected = state.isServiceSelected(event.service);
    final List<StaffServiceType> newServices = isSelected
        ? state.services.where((service) => service != event.service).toList()
        : [...state.services, event.service];

    emit(state.copyWith(services: newServices));
  }

  Future<void> _onCreateButtonPressed(
    _CreateButtonPressed event,
    Emitter<AdminCreateStaffMemberState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final StaffMember staffMember = await state.staffMember(
      idGenerator: idGenerator,
      cloudinary: cloudinary,
    );

    final Result<StaffMember> result =
        await adminCreateStaffMemberClient.createStaffMember(staffMember);
    result.when(
      success: (staffMember) {
        emit(state.copyWith(isLoading: false));
        if (adminStaffBloc.state.isLoaded) {
          final List<StaffMember> updatedStaffMembers = [
            ...adminStaffBloc.state.staffMembers!,
            staffMember,
          ];

          adminStaffBloc.add(AdminStaffEvent.setLoaded(updatedStaffMembers));
          router.pop();
        }
      },
      error: (message) => emit(state.copyWith(isLoading: false)),
    );
  }
}
