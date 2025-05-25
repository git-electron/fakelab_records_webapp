part of '../../book_recording_screen.dart';

class _Card extends StatelessWidget {
  const _Card();

  static const double padding = 15;

  @override
  Widget build(BuildContext context) {
    return MeasureSizeWrapper(
      builder: (context, size) {
        return Container(
          padding: const Pad(all: padding),
          margin: const Pad(horizontal: 20),
          decoration: ShapeDecoration(
            color: context.colors.card,
            shape: BorderRadius.circular(20).smoothShape(),
          ),
          child: Row(
            spacing: padding,
            children: [
              _Cover(size),
              const _Content(),
            ],
          ),
        );
      },
    );
  }
}
