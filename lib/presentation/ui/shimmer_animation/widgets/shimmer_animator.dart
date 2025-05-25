part of '../shimmer_animation.dart';

class ShimmerAnimator extends StatefulWidget {
  const ShimmerAnimator({
    required this.child,
    required this.color,
    required this.width,
    required this.opacity,
    required this.duration,
    required this.interval,
    required this.direction,
    super.key,
  });

  final Color color;
  final Widget child;
  final double opacity, width;
  final ShimmerDirection direction;
  final Duration duration, interval;

  @override
  State<ShimmerAnimator> createState() => _ShimmerAnimatorState();
}

//Animator state controls the animation using all the parameters defined
class _ShimmerAnimatorState extends State<ShimmerAnimator>
    with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: widget.duration);
    animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeInOut,
      ),
    )..addListener(() async {
        if (controller.isCompleted) {
          timer = Timer(
            widget.interval,
            () => mounted ? controller.forward(from: 0) : null,
          );
        }
        setState(() {});
      });
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    timer?.cancel();
    timer = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      foregroundPainter: CustomSplashAnimation(
        context: context,
        width: widget.width,
        color: widget.color,
        opacity: widget.opacity,
        position: animation.value,
        end: widget.direction.end,
        begin: widget.direction.begin,
      ),
      child: widget.child,
    );
  }
}
