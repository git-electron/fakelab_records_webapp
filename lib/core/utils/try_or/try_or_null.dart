import 'dart:async';

T? tryOrNull<T>(
  T? Function() tryFunc, {
  void Function(Object e)? onError,
}) {
  try {
    return tryFunc.call();
  } catch (e) {
    onError?.call(e);
    return null;
  }
}

FutureOr<T?> tryOrNullAsync<T>(
  FutureOr<T?> Function() tryFunc, {
  void Function(Object e)? onError,
}) async {
  try {
    return await tryFunc.call();
  } catch (e) {
    onError?.call(e);
    return null;
  }
}
