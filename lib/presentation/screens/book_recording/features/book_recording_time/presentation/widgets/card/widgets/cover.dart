part of '../../../book_recording_time_screen.dart';

class _Cover extends StatelessWidget {
  const _Cover(this.size);

  final Size size;

  @override
  Widget build(BuildContext context) {
    final double dimension = size.height - (_Card.padding * 2);

    return Container(
      height: dimension.clamp(0, double.infinity),
      width: dimension.clamp(0, double.infinity),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        shape: BorderRadius.circular(10).smoothShape(),
      ),
      child: Assets.images.services.recording.image(),
    );
  }
}
