import 'package:fakelab_records_webapp/core/domain/models/result/result.dart';
import 'package:fakelab_records_webapp/core/domain/models/user/user.dart';
import 'package:fakelab_records_webapp/core/extensions/string_extensions.dart';
import 'package:fakelab_records_webapp/core/router/router.dart';
import 'package:fakelab_records_webapp/core/utils/id_generator/id_generator.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_clients_bloc/admin_clients_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/clients/features/create_client/client/admin_create_client_client.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'admin_create_client_event.dart';
part 'admin_create_client_state.dart';
part 'admin_create_client_bloc.freezed.dart';

@injectable
class AdminCreateClientBloc
    extends Bloc<AdminCreateClientEvent, AdminCreateClientState> {
  AdminCreateClientBloc(
    @factoryParam this.adminClientsBloc,
    this.router,
    this.idGenerator,
    this.adminCreateClientClient,
  ) : super(const _AdminCreateClientState()) {
    on<_FirstNameChanged>(_onFirstNameChanged);
    on<_LastNameChanged>(_onLastNameChanged);
    on<_UsernameChanged>(_onUsernameChanged);
    on<_PhoneNumberChanged>(_onPhoneNumberChanged);

    on<_CreateButtonPressed>(_onCreateButtonPressed);
  }

  final AppRouter router;
  final IdGenerator idGenerator;
  final AdminClientsBloc adminClientsBloc;
  final AdminCreateClientClient adminCreateClientClient;

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
    final User client = await state.client(idGenerator: idGenerator);

    final Result<User> result =
        await adminCreateClientClient.createClient(client);
    result.when(
      success: (client) {
        emit(state.copyWith(isLoading: false));
        if (adminClientsBloc.state.isLoaded) {
          final List<User> updatedClients = [
            ...adminClientsBloc.state.clients!,
            client,
          ];

          adminClientsBloc.add(AdminClientsEvent.setLoaded(updatedClients));
          router.pop();
        }
      },
      error: (message) => emit(state.copyWith(isLoading: false)),
    );
  }
}
