part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.setLoading() = _SetLoading;

  const factory UserEvent.setError(String? message) = _SetError;

  const factory UserEvent.setAuthorized(User user) = _SetAuthorized;

  const factory UserEvent.setUnauthorized() = _SetUnauthorized;
}
