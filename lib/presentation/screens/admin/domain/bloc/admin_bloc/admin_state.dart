part of 'admin_bloc.dart';

@freezed
class AdminState with _$AdminState {
  const factory AdminState({
    @Default(AdminTab.staff) AdminTab selectedTab,
  }) = _AdminState;

  const AdminState._();

  bool isSelected(AdminTab tab) => tab == selectedTab;
}
