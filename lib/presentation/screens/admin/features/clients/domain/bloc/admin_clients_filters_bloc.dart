import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../../core/domain/models/user/user.dart';
import '../../../../../../../core/extensions/string_extensions.dart';

part 'admin_clients_filters_bloc.freezed.dart';
part 'admin_clients_filters_event.dart';
part 'admin_clients_filters_state.dart';

@injectable
class AdminClientsFiltersBloc
    extends Bloc<AdminClientsFiltersEvent, AdminClientsFiltersState> {
  AdminClientsFiltersBloc() : super(const AdminClientsFiltersState()) {
    on<_SearchQueryChanged>(_onSearchQueryChanged);
  }

  Future<void> _onSearchQueryChanged(
    _SearchQueryChanged event,
    Emitter<AdminClientsFiltersState> emit,
  ) async {
    emit(state.copyWith(searchQuery: event.query));
  }
}
