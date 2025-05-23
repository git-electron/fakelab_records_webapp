import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../features/my_orders/domain/bloc/my_orders_feature_bloc.dart';

part 'home_bloc_data.freezed.dart';

@freezed
class HomeBlocData with _$HomeBlocData {
  const factory HomeBlocData({
    required MyOrdersFeatureBloc myOrdersFeatureBloc,
  }) = _HomeBlocData;
}
