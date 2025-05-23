part of '../../../book_recording_time_screen.dart';

class _Cover extends StatelessWidget {
  const _Cover();

  @override
  Widget build(BuildContext context) {
    final double dimension = MediaQuery.of(context).size.width * .2;

    return Container(
      width: dimension,
      height: dimension,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        shape: BorderRadius.circular(10).smoothShape(),
      ),
      child: Assets.images.services.recording.image(),
    );
  }
}
