import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';
import '../../core/extensions/border_radius_extensions.dart';
import '../../core/gen/colors.gen.dart';
import '../../core/theme/theme_extensions.dart';
import 'shimmer_animation/shimmer_animation.dart';

class AppSwipeButton extends StatefulWidget {
  const AppSwipeButton({
    required this.text,
    required this.onSwiped,
    this.width,
    this.height = 60,
    this.isEnabled = true,
    this.isLoading = false,
    this.isExpanded = true,
    required this.iconColor,
    required this.thumbColor,
    required this.trackColor,
    super.key,
  });

  final String text;
  final VoidCallback onSwiped;
  final double height;
  final double? width;
  final bool isEnabled;
  final bool isLoading;
  final bool isExpanded;
  final Color iconColor;
  final Color thumbColor;
  final Color trackColor;

  factory AppSwipeButton.primary({
    required VoidCallback onSwiped,
    required String text,
    double? width,
    double height = 60,
    bool isEnabled = true,
    bool isLoading = false,
    bool isExpanded = true,
  }) {
    return AppSwipeButton(
      onSwiped: onSwiped,
      text: text,
      width: width,
      height: height,
      isEnabled: isEnabled,
      isLoading: isLoading,
      isExpanded: isExpanded,
      trackColor: AppColors.card,
      iconColor: AppColors.background,
      thumbColor: AppColors.onBackground,
    );
  }

  @override
  State<AppSwipeButton> createState() => _AppSwipeButtonState();
}

class _AppSwipeButtonState extends State<AppSwipeButton>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final AnimationController _pullController;

  late _SwipeState _state;

  @override
  void initState() {
    _initControllers();
    _initSwipeState();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant AppSwipeButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isLoading != widget.isLoading) {
      setState(() {
        _controller.value = _controllerInitialValue;
        _initSwipeState();
      });
    }
  }

  static const Duration _duration = Duration(milliseconds: 150);
  static const Duration _pullBackDuration = Duration(milliseconds: 70);

  void _initControllers() {
    _controller = AnimationController(
      vsync: this,
      duration: _duration,
      value: _controllerInitialValue,
    );

    _pullController = AnimationController(
      vsync: this,
      value: 1,
      duration: _duration,
      reverseDuration: _pullBackDuration,
    );
  }

  void _initSwipeState() {
    _state = widget.isLoading ? _SwipeState.completed : _SwipeState.idle;
  }

  double get _controllerInitialValue => widget.isLoading ? 1 : 0;

  @override
  Widget build(BuildContext context) {
    final bool canTap = widget.isEnabled && !widget.isLoading;

    return AnimatedBuilder(
        animation: _pullController,
        builder: (context, child) {
          return Padding(
            padding: Pad(left: 20, right: 10 + _pullController.value * 10),
            child: IgnorePointer(
              ignoring: !canTap,
              child: Opacity(
                opacity: widget.isEnabled ? 1 : .25,
                child: SizedBox(
                  width: widget.isExpanded ? double.maxFinite : widget.width,
                  height: widget.height,
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
                ),
              ),
            ),
          );
        });
  }

  static const Duration _kShimmerDuration = Duration(milliseconds: 2500);
  static const ShimmerDirection _kShimmerDirection =
      ShimmerDirection.fromLeftToRight();

  Widget _buildTrack(BuildContext context, BoxConstraints constraints) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: widget.trackColor,
        shape: BorderRadius.circular(20).smoothShape(),
      ),
      child: ShimmerAnimation(
        width: .1,
        color: widget.thumbColor,
        isEnabled: widget.isEnabled,
        duration: _kShimmerDuration,
        direction: _kShimmerDirection,
        child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Container(
                height: 60,
                color: Color.lerp(
                  widget.trackColor,
                  widget.thumbColor,
                  _controller.value * .1,
                ),
                width: constraints.maxWidth,
                alignment: Alignment.center,
                child: Text(
                  widget.text,
                  style: context.styles.body1.copyWith(
                    color: widget.thumbColor,
                  ),
                ),
              );
            }),
      ),
    );
  }

  Widget _buildThumb(BuildContext context, BoxConstraints constraints) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final double padding = !_state.isIdle ? 0 : 5;
        final Duration duration =
            _controller.value > 0 ? Duration.zero : kAnimationDuration;
        final double position =
            _controller.value * (constraints.maxWidth - widget.height);

        final double height =
            !_state.isIdle ? widget.height : widget.height - padding * 2;
        final double width = height + position;
        final double arrowHeight = widget.height;
        final double arrowWidth = widget.height - 10 - _controller.value * 15;
        final double radius = !_state.isIdle ? 20 : 15;

        return AnimatedContainer(
          duration: duration,
          curve: kAnimationCurve,
          padding: Pad(all: padding),
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onHorizontalDragStart: _onHorizontalDragStart,
              onHorizontalDragUpdate: (details) =>
                  _onHorizontalDragUpdate(details, constraints.maxWidth),
              onHorizontalDragEnd: _onHorizontalDragEnd,
              child: AnimatedContainer(
                duration: duration,
                curve: kAnimationCurve,
                width: width,
                height: height,
                alignment: Alignment.centerRight,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: widget.thumbColor,
                  shape: BorderRadius.circular(radius).smoothShape(),
                ),
                child: AnimatedSwitcher(
                  duration: kAnimationDuration,
                  switchOutCurve: Curves.easeInExpo,
                  layoutBuilder: _layoutBuilder,
                  child: widget.isLoading
                      ? Align(
                          alignment: Alignment.center,
                          child: SizedBox.square(
                            dimension: 20,
                            child: CircularProgressIndicator(
                              color: widget.iconColor,
                              strokeCap: StrokeCap.round,
                              strokeWidth: 3,
                            ),
                          ),
                        )
                      : Stack(
                          children: [
                            SizedBox(
                              width: arrowWidth,
                              height: arrowHeight,
                              child: Icon(
                                Icons.keyboard_arrow_right_rounded,
                                size: widget.height / 1.75,
                                color: Color.lerp(
                                  widget.iconColor,
                                  widget.thumbColor,
                                  _controller.value * .5,
                                ),
                              ),
                            ),
                          ],
                        ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _layoutBuilder(Widget? currentChild, List<Widget> previousChildren) {
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        ...previousChildren,
        if (currentChild != null) currentChild,
      ],
    );
  }

  _onHorizontalDragStart(DragStartDetails details) {
    if (widget.isLoading) return;
    setState(() {
      _state = _SwipeState.swiping;
    });
  }

  _onHorizontalDragUpdate(DragUpdateDetails details, double width) {
    if (_state.isCompleted) return;
    if (widget.isLoading) return;

    final double offset = details.primaryDelta! / (width - 60);
    _controller.value += offset;

    if (_controller.value == 1) {
      setState(() {
        _state = _SwipeState.completed;
      });
      _pullController.reverse();
      widget.onSwiped();
    }
  }

  _onHorizontalDragEnd(DragEndDetails details) {
    _pullController.forward();

    if (widget.isLoading) return;

    setState(() {
      _controller.animateTo(0);
      _state = _SwipeState.idle;
    });
  }
}

enum _SwipeState {
  idle,
  swiping,
  completed;

  bool get isIdle => this == _SwipeState.idle;

  bool get isSwiping => this == _SwipeState.swiping;

  bool get isCompleted => this == _SwipeState.completed;
}
