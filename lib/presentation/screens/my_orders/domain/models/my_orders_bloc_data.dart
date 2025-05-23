import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../features/my_orders/domain/bloc/my_orders_feature_bloc.dart';

part 'my_orders_bloc_data.freezed.dart';

@freezed
class MyOrdersBlocData with _$MyOrdersBlocData {
  const factory MyOrdersBlocData({
    required MyOrdersFeatureBloc myOrdersFeatureBloc,
  }) = _MyOrdersBlocData;
}
