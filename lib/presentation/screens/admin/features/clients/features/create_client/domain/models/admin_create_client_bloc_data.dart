import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../domain/bloc/admin_clients_bloc/admin_clients_bloc.dart';

part 'admin_create_client_bloc_data.freezed.dart';

@freezed
class AdminCreateClientBlocData with _$AdminCreateClientBlocData {
  const factory AdminCreateClientBlocData({
    required AdminClientsBloc adminClientsBloc,
  }) = _AdminCreateClientBlocData;
}
