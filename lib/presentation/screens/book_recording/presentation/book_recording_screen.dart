import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blur/blur.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_swipe_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/di/injector.dart';
import '../../../../core/extensions/border_radius_extensions.dart';
import '../../../../core/extensions/datetime_extensions.dart';
import '../../../../core/extensions/duration_extensions.dart';
import '../../../../core/gen/assets.gen.dart';
import '../../../../core/theme/theme_extensions.dart';
import '../../../../features/checkout/domain/models/checkout_hint.dart';
import '../../../../features/checkout/presentation/checkout_feature.dart';
import '../../../ui/pages/error_page.dart';
import '../../../ui/wrappers/measure_size_wrapper.dart';
import '../../../ui/wrappers/telegram/telegram_meta_wrapper.dart';
import '../domain/bloc/book_recording_bloc/book_recording_bloc.dart';
import '../domain/bloc/bookings_bloc/bookings_bloc.dart';
import '../domain/models/book_recording_bloc_data/book_recording_bloc_data.dart';

part 'pages/time_is_unavailable_page.dart';
part 'widgets/app_bar.dart';
part 'widgets/card/card.dart';
part 'widgets/card/widgets/content/content.dart';
part 'widgets/card/widgets/content/widgets/info.dart';
part 'widgets/card/widgets/content/widgets/title.dart';
part 'widgets/card/widgets/content/widgets/total_cost.dart';
part 'widgets/card/widgets/cover.dart';
part 'widgets/checkout.dart';
part 'widgets/header.dart';
part 'widgets/refund_warning.dart';
part 'widgets/button.dart';

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
            if (state.hasError) return ErrorPage(message: state.message);
            if (!state.isTimeAvailable) return const _TimeIsUnavailablePage();

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
        padding: const Pad(vertical: 40),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _Header(),
            Gap(20),
            _Card(),
            Gap(10),
            _Checkout(),
            Gap(10),
            _RefundWarning(),
            Gap(20),
            _Button(),
          ],
        ),
      ),
    );
  }
}
