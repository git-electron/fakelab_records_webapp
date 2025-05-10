import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fakelab_records_webapp/core/di/injector.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/book_recording/domain/bloc/book_recording_bloc.dart';
import 'package:fakelab_records_webapp/presentation/ui/pages/error_page.dart';
import 'package:fakelab_records_webapp/presentation/ui/pages/loading_page.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/telegram/telegram_meta_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import 'widgets/book_recording_screen_app_bar.dart';

@RoutePage()
class BookRecordingScreen extends StatelessWidget {
  const BookRecordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => $<BookRecordingBloc>(),
      child: Scaffold(
        body: BlocBuilder<BookRecordingBloc, BookRecordingState>(
          builder: (context, state) {
            if (state.isLoading) return const LoadingPage();
            if (state.hasError) return ErrorPage(message: state.message);

            return CustomScrollView(
              slivers: [
                TelegramMetaWrapper(builder: (context, meta) {
                  if (meta.isMobile) {
                    return const BookRecordingScreenAppBarMobile();
                  }
                  return const BookRecordingScreenAppBar();
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
        ],
      ),
    );
  }
}
