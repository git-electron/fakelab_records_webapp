import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../../../../core/domain/models/result/result.dart';
import '../../../../../../../../../core/domain/models/user/user.dart';
import '../../../../../../../../../core/extensions/string_extensions.dart';
import '../../../../../../../../../core/formatters/phone_number_formatter.dart';
import '../../../../../../../../../core/router/router.dart';
import '../../../../../../../../../core/utils/id_generator/id_generator.dart';
import '../../../../../../domain/bloc/admin_clients_bloc/admin_clients_bloc.dart';
import '../../client/admin_create_client_client.dart';
import '../models/admin_create_client_bloc_data.dart';

part 'admin_create_client_bloc.freezed.dart';
part 'admin_create_client_event.dart';
part 'admin_create_client_state.dart';

@injectable
class AdminCreateClientBloc
    extends Bloc<AdminCreateClientEvent, AdminCreateClientState> {
  AdminCreateClientBloc(
    this._router,
    this._idGenerator,
    this._adminCreateClientClient,
    @factoryParam AdminCreateClientBlocData data,
  )   : _adminClientsBloc = data.adminClientsBloc,
        super(const _AdminCreateClientState()) {
    on<_FirstNameChanged>(_onFirstNameChanged);
    on<_LastNameChanged>(_onLastNameChanged);
    on<_UsernameChanged>(_onUsernameChanged);
    on<_PhoneNumberChanged>(_onPhoneNumberChanged);

    on<_CreateButtonPressed>(_onCreateButtonPressed);
  }

  final AppRouter _router;
  final IdGenerator _idGenerator;
  final AdminClientsBloc _adminClientsBloc;
  final AdminCreateClientClient _adminCreateClientClient;

  Future<void> _onFirstNameChanged(
    _FirstNameChanged event,
    Emitter<AdminCreateClientState> emit,
  ) async {
    emit(state.copyWith(firstName: event.firstName));
  }

  Future<void> _onLastNameChanged(
    _LastNameChanged event,
    Emitter<AdminCreateClientState> emit,
  ) async {
    emit(state.copyWith(lastName: event.lastName));
  }

  Future<void> _onUsernameChanged(
    _UsernameChanged event,
    Emitter<AdminCreateClientState> emit,
  ) async {
    emit(state.copyWith(username: event.username));
  }

  Future<void> _onPhoneNumberChanged(
    _PhoneNumberChanged event,
    Emitter<AdminCreateClientState> emit,
  ) async {
    emit(state.copyWith(phoneNumber: event.phoneNumber));
  }

  Future<void> _onCreateButtonPressed(
    _CreateButtonPressed event,
    Emitter<AdminCreateClientState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final User client = await state.client(idGenerator: _idGenerator);

    final Result<User> result =
        await _adminCreateClientClient.createClient(client);
    result.when(
      success: (client) {
        emit(state.copyWith(isLoading: false));
        if (_adminClientsBloc.state.isLoaded) {
          final List<User> updatedClients = [
            ..._adminClientsBloc.state.clients!,
            client,
          ];

          _adminClientsBloc.add(AdminClientsEvent.setLoaded(updatedClients));
          _router.pop();
        }
      },
      error: (message) => emit(state.copyWith(isLoading: false)),
    );
  }
}
