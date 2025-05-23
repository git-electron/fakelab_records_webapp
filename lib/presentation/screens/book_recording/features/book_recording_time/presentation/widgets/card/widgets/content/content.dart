part of '../../../../book_recording_time_screen.dart';

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        spacing: 10,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _Title(),
          _Info(),
          _DurationButtons(),
        ],
      ),
    );
  }
}
