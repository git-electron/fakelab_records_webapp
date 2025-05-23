import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/constants/constants.dart';
import '../../../../../../core/di/injector.dart';
import '../../../../../../core/extensions/border_radius_extensions.dart';
import '../../../../../../core/extensions/datetime_extensions.dart';
import '../../../../../../core/extensions/duration_extensions.dart';
import '../../../../../../core/extensions/num_extensions.dart';
import '../../../../../../core/gen/assets.gen.dart';
import '../../../../../../core/theme/theme_extensions.dart';
import '../../../../../ui/app_button.dart';
import '../../../../../ui/pages/error_page.dart';
import '../../../../../ui/pages/loading_page.dart';
import '../../../../../ui/wrappers/tappable.dart';
import '../../../../../ui/wrappers/telegram/telegram_meta_wrapper.dart';
import '../../../domain/bloc/bookings_bloc.dart';
import '../../../domain/models/availability_type/availability_type.dart';
import '../../../domain/models/booking/booking.dart';
import '../domain/bloc/book_recording_time_bloc.dart';

part 'widgets/app_bar.dart';
part 'widgets/availability/availability.dart';
part 'widgets/availability/widgets/time_button.dart';
part 'widgets/availability/widgets/wrap.dart';
part 'widgets/button.dart';
part 'widgets/card/card.dart';
part 'widgets/card/widgets/content/content.dart';
part 'widgets/card/widgets/content/widgets/cost_per_hour.dart';
part 'widgets/card/widgets/content/widgets/duration_buttons.dart';
part 'widgets/card/widgets/content/widgets/info.dart';
part 'widgets/card/widgets/content/widgets/title.dart';
part 'widgets/card/widgets/cover.dart';

@RoutePage()
class BookRecordingTimeScreen extends StatelessWidget {
  const BookRecordingTimeScreen({
    required this.selectedDate,
    required this.bookingsBloc,
    super.key,
  });

  final DateTime selectedDate;
  final BookingsBloc bookingsBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => $<BookRecordingTimeBloc>(
        param1: selectedDate,
        param2: bookingsBloc,
      ),
      child: Scaffold(
        body: BlocBuilder<BookRecordingTimeBloc, BookRecordingTimeState>(
          builder: (context, state) {
            if (state.isLoading) return const LoadingPage();
            if (state.hasError) return ErrorPage(message: state.message);

            return const Column(
              children: [
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
    return Expanded(
      child: Container(
        width: double.maxFinite,
        color: context.colors.background,
        padding: const Pad(vertical: 40),
        child: const Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Availability(),
            _Card(),
            _Button(),
          ],
        ),
      ),
    );
  }
}
