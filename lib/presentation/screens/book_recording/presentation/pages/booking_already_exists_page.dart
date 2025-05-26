import 'package:fakelab_records_webapp/presentation/ui/pages/error_page.dart';
import 'package:flutter/material.dart';

class AlreadyExistsPage extends StatelessWidget {
  const AlreadyExistsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ErrorPage(
      shouldDisplaySupportText: false,
      shouldShowBackButton: true,
      title: _title,
      message: _message,
    );
  }

  static const String _title = 'Ой, у тебя уже есть заявка';
  static const String _message =
      'Дождись подтверждения твоего предыдущего бронирования, прежде чем создавать новую заявку';
}
