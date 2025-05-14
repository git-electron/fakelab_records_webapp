import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/presentation/screens/book_recording/features/book_recording_time/domain/bloc/book_recording_time_bloc.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProceedButton extends StatelessWidget {
  const ProceedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const Pad(horizontal: 20),
      child: BlocBuilder<BookRecordingTimeBloc, BookRecordingTimeState>(
        builder: (context, state) {
          return AppButton.primary(
            onTap: () {},
            isEnabled: state.canProceed,
            text: 'Продолжить',
          );
        },
      ),
    );
  }
}
