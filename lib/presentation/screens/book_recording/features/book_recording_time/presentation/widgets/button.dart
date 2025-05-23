part of '../book_recording_time_screen.dart';

class _Button extends StatelessWidget {
  const _Button();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookRecordingTimeBloc, BookRecordingTimeState>(
      builder: (context, state) {
        return AppButton.primary(
          onTap: () {},
          isEnabled: state.canProceed,
          text: 'К оформлению',
        );
      },
    );
  }
}
