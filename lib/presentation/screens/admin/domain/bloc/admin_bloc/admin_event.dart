part of 'admin_bloc.dart';

@freezed
class AdminEvent with _$AdminEvent {
  const factory AdminEvent.tabChabged(AdminTab tab) = _TabChanged;
}
