import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../../../core/domain/models/user/user.dart';
import '../../../../../../domain/bloc/admin_clients_bloc/admin_clients_bloc.dart';

part 'admin_edit_client_bloc_data.freezed.dart';

@freezed
class AdminEditClientBlocData with _$AdminEditClientBlocData {
  const factory AdminEditClientBlocData({
    required User client,
    required AdminClientsBloc adminClientsBloc,
  }) = _AdminEditClientBlocData;
}
