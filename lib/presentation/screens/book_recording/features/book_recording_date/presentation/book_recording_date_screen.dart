import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fakelab_records_webapp/core/di/injector.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/book_recording/features/book_recording_date/domain/bloc/book_recording_date_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/book_recording/domain/bloc/bookings_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/book_recording/features/book_recording_date/presentation/widgets/calendar/book_recording_calendar.dart';
import 'package:fakelab_records_webapp/presentation/ui/pages/error_page.dart';
import 'package:fakelab_records_webapp/presentation/ui/pages/loading_page.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/telegram/telegram_meta_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import 'widgets/book_recording_date_screen_app_bar.dart';

@RoutePage()
class BookRecordingDateScreen extends StatelessWidget {
  const BookRecordingDateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => $<BookingsBloc>()),
        BlocProvider(create: (context) => $<BookRecordingDateBloc>()),
      ],
      child: Scaffold(
        body: BlocBuilder<BookingsBloc, BookingsState>(
          builder: (context, state) {
            if (state.isLoading) return const LoadingPage();
            if (state.hasError) return ErrorPage(message: state.message);

            return CustomScrollView(
              slivers: [
                TelegramMetaWrapper(builder: (context, meta) {
                  if (meta.isMobile) {
                    return const BookRecordingDateScreenAppBarMobile();
                  }
                  return const BookRecordingDateScreenAppBar();
                }),
                const SliverToBoxAdapter(
                  child: BookRecordingScreenBody(),
                ),
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
      color: context.colors.background,
      padding: const Pad(top: 20),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(55),
          BookRecordingCalendar(),
          Gap(20),
        ],
      ),
    );
  }
}
