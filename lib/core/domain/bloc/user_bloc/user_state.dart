part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.unauthorized() = _Unauthorized;

  const factory UserState.loading() = _Loading;

  const factory UserState.authorized(User user) = _Authorized;

  const factory UserState.error(String? message) = _Error;

  const UserState._();

  bool get isLoading => maybeWhen(
        loading: () => true,
        orElse: () => false,
      );

  bool get isAuthorized => maybeWhen(
        authorized: (user) => true,
        orElse: () => false,
      );

  bool get hasError => maybeWhen(
        error: (_) => true,
        orElse: () => false,
      );

  User? get user => whenOrNull(
        authorized: (user) => user,
      );

  String? get error => whenOrNull(
        error: (error) => error,
      );
}
