import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../../../../core/domain/models/result/result.dart';
import '../../../../../../../../../core/domain/models/user/user.dart';
import '../../../../../../../../../core/extensions/string_extensions.dart';
import '../../../../../../../../../core/formatters/phone_number_formatter.dart';
import '../../../../../../../../../core/router/router.dart';
import '../../../../../../domain/bloc/admin_clients_bloc/admin_clients_bloc.dart';
import '../../client/admin_edit_client_client.dart';
import '../models/admin_edit_client_bloc_data.dart';

part 'admin_edit_client_bloc.freezed.dart';
part 'admin_edit_client_event.dart';
part 'admin_edit_client_state.dart';

@injectable
class AdminEditClientBloc
    extends Bloc<AdminEditClientEvent, AdminEditClientState> {
  AdminEditClientBloc(
    this._router,
    this._adminEditClientClient,
    @factoryParam AdminEditClientBlocData data,
  )   : client = data.client,
        _adminClientsBloc = data.adminClientsBloc,
        super(AdminEditClientState.fromClient(data.client)) {
    on<_FirstNameChanged>(_onFirstNameChanged);
    on<_LastNameChanged>(_onLastNameChanged);
    on<_UsernameChanged>(_onUsernameChanged);
    on<_PhoneNumberChanged>(_onPhoneNumberChanged);

    on<_ConfirmButtonPressed>(_onConfirmButtonPressed);
    on<_DeleteButtonPressed>(_onDeleteButtonPressed);
  }

  final User client;

  final AppRouter _router;
  final AdminClientsBloc _adminClientsBloc;
  final AdminEditClientClient _adminEditClientClient;

  Future<void> _onFirstNameChanged(
    _FirstNameChanged event,
    Emitter<AdminEditClientState> emit,
  ) async {
    emit(state.copyWith(firstName: event.firstName));
  }

  Future<void> _onLastNameChanged(
    _LastNameChanged event,
    Emitter<AdminEditClientState> emit,
  ) async {
    emit(state.copyWith(lastName: event.lastName));
  }

  Future<void> _onUsernameChanged(
    _UsernameChanged event,
    Emitter<AdminEditClientState> emit,
  ) async {
    emit(state.copyWith(username: event.username));
  }

  Future<void> _onPhoneNumberChanged(
    _PhoneNumberChanged event,
    Emitter<AdminEditClientState> emit,
  ) async {
    emit(state.copyWith(phoneNumber: event.phoneNumber));
  }

  Future<void> _onConfirmButtonPressed(
    _ConfirmButtonPressed event,
    Emitter<AdminEditClientState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final User updatedClient = await state.updatedClient(client);

    final Result<User> result =
        await _adminEditClientClient.updateClient(updatedClient);
    result.when(
      success: (updatedClient) {
        emit(state.copyWith(isLoading: false));
        if (_adminClientsBloc.state.isLoaded) {
          final List<User> updatedClients =
              _adminClientsBloc.state.clients!.map((client) {
            if (client.id == updatedClient.id) {}
            return client.id == updatedClient.id ? updatedClient : client;
          }).toList();

          _adminClientsBloc.add(AdminClientsEvent.setLoaded(updatedClients));
          _router.pop();
        }
      },
      error: (message) => emit(state.copyWith(isLoading: false)),
    );
  }

  Future<void> _onDeleteButtonPressed(
    _DeleteButtonPressed event,
    Emitter<AdminEditClientState> emit,
  ) async {
    _router.pop();
    _adminClientsBloc.add(AdminClientsEvent.deleteClient(client.id));
  }
}
