import 'package:freezed_annotation/freezed_annotation.dart';

import '../type_policy/type_policy.dart';

part 'my_bookings_feature_bloc_data.freezed.dart';

@freezed
class MyBookingsFeatureBlocData with _$MyBookingsFeatureBlocData {
  const factory MyBookingsFeatureBlocData({
    required MyBookingsTypePolicy typePolicy,
  }) = _MyBookingsFeatureBlocData;
}
