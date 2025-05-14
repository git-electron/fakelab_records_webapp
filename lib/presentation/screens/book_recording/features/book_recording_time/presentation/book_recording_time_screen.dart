import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fakelab_records_webapp/core/di/injector.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/book_recording/domain/bloc/bookings_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/book_recording/features/book_recording_time/domain/bloc/book_recording_time_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/book_recording/features/book_recording_time/presentation/widgets/availability/book_recording_time_availability.dart';
import 'package:fakelab_records_webapp/presentation/screens/book_recording/features/book_recording_time/presentation/widgets/availability/duration_slider.dart';
import 'package:fakelab_records_webapp/presentation/ui/pages/error_page.dart';
import 'package:fakelab_records_webapp/presentation/ui/pages/loading_page.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/telegram/telegram_meta_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import 'widgets/availability/proceed_button.dart';
import 'widgets/book_recording_time_screen_app_bar.dart';

@RoutePage()
class BookRecordingTimeScreen extends StatelessWidget {
  const BookRecordingTimeScreen({
    required this.selectedDay,
    required this.bookingsBloc,
    super.key,
  });

  final DateTime selectedDay;
  final BookingsBloc bookingsBloc;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: bookingsBloc),
        BlocProvider(
          create: (context) => $<BookRecordingTimeBloc>(param1: selectedDay),
        ),
      ],
      child: Scaffold(
        body: BlocBuilder<BookingsBloc, BookingsState>(
          builder: (context, state) {
            if (state.isLoading) return const LoadingPage();
            if (state.hasError) return ErrorPage(message: state.message);

            return Column(
              children: [
                TelegramMetaWrapper(builder: (context, meta) {
                  if (meta.isMobile) {
                    return const BookRecordingTimeScreenAppBarMobile();
                  }
                  return const BookRecordingTimeScreenAppBar();
                }),
                const Expanded(child: BookRecordingScreenBody()),
              ],
            );
          },
        ),
      ),
    );
  }
}

class BookRecordingScreenBody extends StatelessWidget {
  const BookRecordingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      color: context.colors.background,
      padding: const Pad(top: 20),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(20),
          Expanded(child: BookRecordingTimeAvailability()),
          Gap(20),
          DurationSlider(),
          Gap(20),
          ProceedButton(),
          Gap(40),
        ],
      ),
    );
  }
}
