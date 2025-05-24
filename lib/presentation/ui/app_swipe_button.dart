import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/constants/constants.dart';
import 'package:fakelab_records_webapp/core/extensions/border_radius_extensions.dart';
import 'package:fakelab_records_webapp/presentation/ui/shimmer_animation/shimmer_animation.dart';
import 'package:flutter/material.dart';

import '../../core/theme/theme_extensions.dart';

class AppSwipeButton extends StatefulWidget {
  const AppSwipeButton({super.key});

  @override
  State<AppSwipeButton> createState() => _AppSwipeButtonState();
}

class _AppSwipeButtonState extends State<AppSwipeButton>
    with SingleTickerProviderStateMixin {
  late AnimationController expandAnimationController;
  @override
  void initState() {
    _initAnimationControllers();
    super.initState();
  }

  bool isSwiping = false;
  bool swiped = false;

  _initAnimationControllers() {
    expandAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
      lowerBound: 0,
      upperBound: 1,
      value: 0,
    );
  }

  @override
  void dispose() {
    expandAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 60,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            clipBehavior: Clip.none,
            children: [
              _buildTrack(context, constraints),
              _buildThumb(context, constraints),
            ],
          );
        },
      ),
    );
  }

  Widget _buildTrack(BuildContext context, BoxConstraints constraints) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: context.colors.card,
        shape: BorderRadius.circular(20).smoothShape(),
      ),
      child: ShimmerAnimation(
        width: .1,
        color: context.colors.onBackground,
        // interval: const Duration(milliseconds: 500),
        duration: const Duration(milliseconds: 2500),
        direction: const ShimmerDirection.fromLeftToRight(),
        child: Container(
          height: 60,
          width: constraints.maxWidth,
          color: context.colors.card,
          alignment: Alignment.center,
          child: Text(
            'Text',
            style: context.styles.body1.copyWith(
              color: context.colors.onBackground,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildThumb(BuildContext context, BoxConstraints constraints) {
    return AnimatedContainer(
      duration: expandAnimationController.value > 0
          ? Duration.zero
          : kAnimationDuration,
      curve: kAnimationCurve,
      padding: Pad(all: isSwiping ? 0 : 5),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onHorizontalDragStart: _onHorizontalDragStart,
          onHorizontalDragUpdate: (details) =>
              _onHorizontalDragUpdate(details, constraints.maxWidth),
          onHorizontalDragEnd: _onHorizontalDragEnd,
          child: AnimatedBuilder(
            animation: expandAnimationController,
            builder: (context, child) {
              return AnimatedContainer(
                duration: expandAnimationController.value > 0
                    ? Duration.zero
                    : kAnimationDuration,
                curve: kAnimationCurve,
                width: (isSwiping ? 60 : 50) +
                    (expandAnimationController.value *
                        (constraints.maxWidth - 60)),
                height: (isSwiping ? 60 : 50),
                decoration: ShapeDecoration(
                  color: context.colors.onBackground,
                  shape:
                      BorderRadius.circular(isSwiping ? 20 : 15).smoothShape(),
                ),
                alignment: Alignment.centerRight,
                child: SizedBox.square(
                  dimension: 60,
                  child: Icon(
                    Icons.arrow_forward,
                    color: context.colors.background,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  _onHorizontalDragStart(DragStartDetails details) {
    setState(() {
      swiped = false;
      isSwiping = true;
    });
  }

  _onHorizontalDragUpdate(DragUpdateDetails details, double width) {
    final double offset = details.primaryDelta! / (width - 60);

    if (!swiped) {
      expandAnimationController.value += offset;

      if (expandAnimationController.value == 1) {
        setState(() {
          swiped = true;
        });
      }
    }
  }

  _onHorizontalDragEnd(DragEndDetails details) {
    setState(() {
      expandAnimationController.animateTo(0);
      isSwiping = false;
    });
  }
}
