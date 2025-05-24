part of '../shimmer_animation.dart';

class CustomSplashAnimation extends CustomPainter {
  CustomSplashAnimation({
    required this.end,
    required this.color,
    required this.begin,
    required this.width,
    required this.context,
    required this.opacity,
    required this.position,
  });

  final Color color;
  final BuildContext context;
  final Alignment begin, end;
  final double position, opacity, width;

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    var stops = <double>[
      // 0.0,
      (position - width * 2).clamp(0, 1),
      (position - width).clamp(0, 1),
      position.clamp(0, 1),
      (position + width).clamp(0, 1),
      (position + width * 2).clamp(0, 1),
      // 1.0,
    ];
    // position = 0.7;
    paint.style = PaintingStyle.fill;
    paint.shader = LinearGradient(
      tileMode: TileMode.decal,
      begin: begin,
      end: end,
      stops: stops,
      colors: [
        Colors.transparent,
        color.withValues(alpha: 0.05),
        color.withValues(alpha: opacity),
        color.withValues(alpha: 0.05),
        Colors.transparent,
      ],
    ).createShader(
      Rect.fromLTRB(
          size.width * -0.5,
          (size.height > size.width) ? 0 : size.height * -0.5,
          size.width * 1.5,
          size.height * 1.5),
    );
    var path = Path();

    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
