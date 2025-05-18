import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/domain/bloc/user_bloc/user_bloc.dart';
import '../../../../../../core/domain/models/result/result.dart';
import '../../../../../../core/domain/models/user/user.dart';
import '../../../../../../core/utils/try_or/try_or_null.dart';
import '../../../client/admin_clients_client.dart';

part 'admin_clients_bloc.freezed.dart';
part 'admin_clients_event.dart';
part 'admin_clients_state.dart';

@injectable
class AdminClientsBloc extends Bloc<AdminClientsEvent, AdminClientsState> {
  AdminClientsBloc(this.userBloc, this.adminClientsClient)
      : super(const _Loading()) {
    on<_SetLoading>(_onSetLoading);
    on<_SetLoaded>(_onSetLoaded);
    on<_SetError>(_onSetError);
    on<_DeleteClient>(_onDeleteClient);

    tryOrNullAsync(_getClients);
  }

  final UserBloc userBloc;
  final AdminClientsClient adminClientsClient;

  Future<void> _onSetLoading(
    _SetLoading event,
    Emitter<AdminClientsState> emit,
  ) async {
    emit(const AdminClientsState.loading());
  }

  Future<void> _onSetLoaded(
    _SetLoaded event,
    Emitter<AdminClientsState> emit,
  ) async {
    emit(AdminClientsState.loaded(event.clients));
  }

  Future<void> _onSetError(
    _SetError event,
    Emitter<AdminClientsState> emit,
  ) async {
    emit(AdminClientsState.error(event.message));
  }

  Future<void> _onDeleteClient(
    _DeleteClient event,
    Emitter<AdminClientsState> emit,
  ) async {
    _deleteClient(event.clientId);
  }

  Future<void> _getClients() async {
    if (!userBloc.state.user!.isAdmin) return;

    add(const AdminClientsEvent.setLoading());
    final Result<List<User>> result = await adminClientsClient.getClients();
    result.when(
      success: (clients) => add(AdminClientsEvent.setLoaded(clients)),
      error: (message) => add(AdminClientsEvent.setError(message)),
    );
  }

  Future<void> _deleteClient(int clientId) async {
    if (!userBloc.state.user!.isAdmin) return;

    final List<User> clients = state.clients ?? [];

    add(const AdminClientsEvent.setLoading());
    final Result<bool> result = await adminClientsClient.deleteClient(clientId);
    result.when(
      success: (_) {
        final List<User> updatedClients =
            clients.where((client) => client.id != clientId).toList();
        add(AdminClientsEvent.setLoaded(updatedClients));
      },
      error: (message) => add(AdminClientsEvent.setError(message)),
    );
  }
}
