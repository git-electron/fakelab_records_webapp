part of '../book_recording_screen.dart';

class _TimeIsUnavailablePage extends StatelessWidget {
  const _TimeIsUnavailablePage();

  @override
  Widget build(BuildContext context) {
    return const ErrorPage(
      shouldDisplaySupportText: false,
      shouldShowBackButton: true,
      title: _title,
      message: _message,
    );
  }

  static const String _title = 'Ой, это время уже заняли';
  static const String _message =
      'Попробуй выбрать другое время или уменьшить длительность бронирования';
}
