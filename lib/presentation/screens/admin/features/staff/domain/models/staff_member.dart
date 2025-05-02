import 'package:fakelab_records_webapp/core/extensions/string_extensions.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/service/order_service_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'staff_activity.dart';

part 'staff_member.freezed.dart';
part 'staff_member.g.dart';

@freezed
class StaffMember with _$StaffMember {
  factory StaffMember({
    required int id,
    required String firstName,
    required String? lastName,
    required String? username,
    required List<StaffActivity> activities,
    required List<OrderServiceType> services,
  }) = _StaffMember;

  factory StaffMember.fromJson(Map<String, dynamic> json) =>
      _$StaffMemberFromJson(json);

  StaffMember._();

  String get fullName {
    return '$firstName${lastName.isNotNullAndEmpty ? ' $lastName' : ''}';
  }
}
