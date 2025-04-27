import '../../../extensions/string_extensions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<T extends Object?> with _$Result<T> {
  factory Result.success(T data) = _ResultSuccess<T>;

  factory Result.error([String? message]) = _ResultError<T>;

  Result._();

  bool get isSuccess => maybeWhen(
        success: (_) => true,
        orElse: () => false,
      );

  bool get hasError => maybeWhen(
        error: (_) => true,
        orElse: () => false,
      );

  bool get hasErrorMessage => maybeWhen(
        error: (message) => message.isNotNullAndEmpty,
        orElse: () => false,
      );
}
