import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blur/blur.dart';
import 'package:fakelab_records_webapp/core/di/injector.dart';
import 'package:fakelab_records_webapp/presentation/screens/book_recording/domain/bloc/bookings_bloc/bookings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/theme_extensions.dart';
import '../../../ui/pages/error_page.dart';
import '../../../ui/pages/loading_page.dart';
import '../../../ui/wrappers/telegram/telegram_meta_wrapper.dart';
import '../domain/bloc/book_recording_bloc/book_recording_bloc.dart';
import '../domain/models/book_recording_bloc_data/book_recording_bloc_data.dart';

part 'widgets/app_bar.dart';

@RoutePage()
class BookRecordingScreen extends StatelessWidget {
  const BookRecordingScreen({
    required this.selectedTime,
    required this.bookingsBloc,
    required this.selectedDuration,
    super.key,
  });

  final DateTime selectedTime;
  final Duration selectedDuration;
  final BookingsBloc bookingsBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => $<BookRecordingBloc>(
        param1: BookRecordingBlocData(
          selectedTime: selectedTime,
          bookingsBloc: bookingsBloc,
          selectedDuration: selectedDuration,
        ),
      ),
      child: Scaffold(
        body: BlocBuilder<BookRecordingBloc, BookRecordingState>(
          builder: (context, state) {
            if (state.isLoading) return const LoadingPage();
            if (state.hasError) return ErrorPage(message: state.message);
            if (state.isTimeAvailable) {
              return const ErrorPage(
                shouldDisplaySupportText: false,
                shouldShowBackButton: true,
                title: 'Ой, это время уже заняли',
                message:
                    'Попробуй выбрать другое время или уменьшить длительность бронирования',
              );
            }

            return const Column(
              verticalDirection: VerticalDirection.up,
              children: [
                _Body(),
                _AppBar(),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.maxFinite,
        color: context.colors.background,
        padding: const Pad(all: 20, bottom: 20),
        child: const Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [],
        ),
      ),
    );
  }
}
