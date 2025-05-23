import 'package:freezed_annotation/freezed_annotation.dart';

import '../limit_policy/limit_policy.dart';

part 'my_orders_feature_bloc_data.freezed.dart';

@freezed
class MyOrdersFeatureBlocData with _$MyOrdersFeatureBlocData {
  const factory MyOrdersFeatureBlocData({
    required MyOrdersLimitPolicy limitPolicy,
  }) = _MyOrdersFeatureBlocData;
}
