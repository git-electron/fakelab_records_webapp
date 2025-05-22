part of '../../../book_recording_time_screen.dart';

class _Card extends StatelessWidget {
  const _Card();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const Pad(all: 20),
      decoration: ShapeDecoration(
        color: context.colors.card,
        shape: BorderRadius.circular(20).smoothShape(),
      ),
      child: const Row(
        spacing: 20,
        children: [
          _Cover(),
          _Content(),
        ],
      ),
    );
  }
}