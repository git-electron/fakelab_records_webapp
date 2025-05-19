import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/extensions/string_extensions.dart';
import '../../../../../../../features/my_orders/domain/models/order/order.dart';
import 'staff_activity.dart';
import 'staff_service_type.dart';

part 'staff_member.freezed.dart';
part 'staff_member.g.dart';

@freezed
class StaffMember with _$StaffMember {
  factory StaffMember({
    String? photoUrl,
    required String id,
    required String firstName,
    required String? lastName,
    required String? username,
    required List<StaffActivity> activities,
    required List<StaffServiceType> services,
  }) = _StaffMember;

  factory StaffMember.fromJson(Map<String, dynamic> json) =>
      _$StaffMemberFromJson(json);

  factory StaffMember.maybeFromJson(dynamic json) =>
      _$StaffMemberFromJson(json);

  StaffMember._();

  String get idShort => '#${id.substring(id.length - 5)}';

  String get fullName {
    return '$firstName${lastName.isNotNullAndEmpty ? ' $lastName' : ''}';
  }

  bool canAssign(Order order) {
    return order.services.every(
      (service) => services.map((s) => s.type).contains(service.type),
    );
  }
}
