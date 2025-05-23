import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/di/injector.dart';
import '../../../../../../core/extensions/border_radius_extensions.dart';
import '../../../../../../core/extensions/color_extensions.dart';
import '../../../../../../core/extensions/datetime_extensions.dart';
import '../../../../../../core/extensions/string_extensions.dart';
import '../../../../../../core/theme/theme_extensions.dart';
import '../../../../../../core/utils/is_same_day/is_same_day.dart';
import '../../../../../ui/pages/error_page.dart';
import '../../../../../ui/pages/loading_page.dart';
import '../../../../../ui/wrappers/tappable.dart';
import '../../../../../ui/wrappers/telegram/telegram_meta_wrapper.dart';
import '../../../domain/bloc/bookings_bloc.dart';
import '../domain/bloc/book_recording_date_bloc.dart';
import 'widgets/calendar/one_month_calendar/utils/dates_grid_generator.dart';

part 'widgets/app_bar.dart';
part 'widgets/calendar/calendar.dart';
part 'widgets/calendar/one_month_calendar/one_month_calendar.dart';
part 'widgets/calendar/one_month_calendar/widgets/date_item.dart';
part 'widgets/calendar/one_month_calendar/widgets/dates_grid.dart';
part 'widgets/calendar/one_month_calendar/widgets/month_title.dart';
part 'widgets/calendar/one_month_calendar/widgets/weekdays_header.dart';

@RoutePage()
class BookRecordingDateScreen extends StatelessWidget {
  const BookRecordingDateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => $<BookingsBloc>()),
        BlocProvider(
          create: (context) => $<BookRecordingDateBloc>(
            param1: context.read<BookingsBloc>(),
          ),
        ),
      ],
      child: Scaffold(
        body: BlocBuilder<BookRecordingDateBloc, BookRecordingDateState>(
          builder: (context, state) {
            if (state.isLoading) return const LoadingPage();
            if (state.hasError) return ErrorPage(message: state.message);

            return const CustomScrollView(
              slivers: [
                _AppBar(),
                _Body(),
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
    return SliverToBoxAdapter(
      child: Container(
        color: context.colors.background,
        padding: const Pad(vertical: 20, bottom: 40),
        child: const _Calendar(),
      ),
    );
  }
}
