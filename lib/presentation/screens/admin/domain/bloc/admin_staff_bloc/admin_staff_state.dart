part of 'admin_staff_bloc.dart';

@freezed
class AdminStaffState with _$AdminStaffState {
  const factory AdminStaffState.loading() = _Loading;

  const factory AdminStaffState.loaded(List<StaffMember> staffMembers) =
      _Loaded;

  const factory AdminStaffState.error(String? message) = _Error;

  const AdminStaffState._();

  bool get isLoading => maybeWhen(
        loading: () => true,
        orElse: () => false,
      );

  bool get isLoaded => maybeWhen(
        loaded: (_) => true,
        orElse: () => false,
      );

  bool get hasStaffMembers => maybeWhen(
        loaded: (staffMembers) => staffMembers.isNotEmpty,
        orElse: () => false,
      );
  List<StaffMember>? get staffMembers => whenOrNull(
        loaded: (staffMembers) => staffMembers,
      );

  bool get hasError => maybeWhen(
        error: (_) => true,
        orElse: () => false,
      );
  String? get message => whenOrNull(error: (message) => message);
}
