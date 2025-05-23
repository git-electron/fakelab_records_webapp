import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../domain/bloc/admin_orders_bloc/admin_orders_bloc.dart';

part 'admin_create_order_bloc_data.freezed.dart';

@freezed
class AdminCreateOrderBlocData with _$AdminCreateOrderBlocData {
  const factory AdminCreateOrderBlocData({
    required AdminOrdersBloc adminOrdersBloc,
  }) = _AdminCreateOrderBlocData;
}
