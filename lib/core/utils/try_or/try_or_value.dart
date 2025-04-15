import 'dart:async';

T tryOrValue<T>(
  T Function() valueCallback, {
  required T Function() orValueCallback,
}) {
  try {
    return valueCallback.call();
  } catch (_) {
    return orValueCallback.call();
  }
}

Future<T> tryOrValueAsync<T>(
  FutureOr<T> Function() valueCallback,
  FutureOr<T> Function() orValueCallback,
) async {
  try {
    return await valueCallback.call();
  } catch (_) {
    return orValueCallback.call();
  }
}
