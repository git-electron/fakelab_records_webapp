import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_order_bloc_data.freezed.dart';

@freezed
class MyOrderBlocData with _$MyOrderBlocData {
  const factory MyOrderBlocData({
    required String orderId,
  }) = _MyOrderBlocData;
}
