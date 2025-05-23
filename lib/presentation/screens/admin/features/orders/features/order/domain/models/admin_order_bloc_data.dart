import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../domain/bloc/admin_orders_bloc/admin_orders_bloc.dart';

part 'admin_order_bloc_data.freezed.dart';

@freezed
class AdminOrderBlocData with _$AdminOrderBlocData {
  const factory AdminOrderBlocData({
    required String orderId,
    required AdminOrdersBloc adminOrdersBloc,
  }) = _AdminOrderBlocData;
}
