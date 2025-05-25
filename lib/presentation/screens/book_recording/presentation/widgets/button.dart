part of '../book_recording_screen.dart';

class _Button extends StatelessWidget {
  const _Button();

  @override
  Widget build(BuildContext context) {
    final BookRecordingBloc bloc = context.read();

    return BlocBuilder<BookRecordingBloc, BookRecordingState>(
      builder: (context, state) {
        return AppSwipeButton.primary(
          text: 'Забронировать',
          isLoading: state.isBookButtonLoading,
          onSwiped: () {
            bloc.add(const BookRecordingEvent.bookButtonPressed());
          },
        );
      },
    );
  }
}
