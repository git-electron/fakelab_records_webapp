import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../../core/extensions/string_extensions.dart';
import '../models/staff_member.dart';
import '../models/staff_service_type.dart';

part 'admin_staff_filters_bloc.freezed.dart';
part 'admin_staff_filters_event.dart';
part 'admin_staff_filters_state.dart';

@injectable
class AdminStaffFiltersBloc
    extends Bloc<AdminStaffFiltersEvent, AdminStaffFiltersState> {
  AdminStaffFiltersBloc() : super(const AdminStaffFiltersState()) {
    on<_SearchQueryChanged>(_onSearchQueryChanged);
    on<_ServiceTypeFilterChanged>(_onServiceTypeFilterChanged);
  }

  Future<void> _onSearchQueryChanged(
    _SearchQueryChanged event,
    Emitter<AdminStaffFiltersState> emit,
  ) async {
    emit(state.copyWith(searchQuery: event.query));
  }

  Future<void> _onServiceTypeFilterChanged(
    _ServiceTypeFilterChanged event,
    Emitter<AdminStaffFiltersState> emit,
  ) async {
    emit(state.copyWith(serviceType: event.serviceType));
  }
}
