part of '../../../book_recording_time_screen.dart';

class _Cover extends StatelessWidget {
  const _Cover();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        shape: BorderRadius.circular(10).smoothShape(),
      ),
      child: Assets.images.services.recording.image(),
    );
  }
}
