import 'package:flutter/material.dart';

class MeasureSizeWrapper extends StatefulWidget {
  const MeasureSizeWrapper({
    required this.builder,
    this.shouldMeasureOnce = true,
    super.key,
  });

  final bool shouldMeasureOnce;
  final Widget Function(BuildContext context, Size size) builder;

  @override
  State<MeasureSizeWrapper> createState() => _MeasureSizeWrapperState();
}

class _MeasureSizeWrapperState extends State<MeasureSizeWrapper> {
  bool _isSizeMeasured = false;
  Size _size = Size.zero;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPersistentFrameCallback(_measureSize);
    return widget.builder(context, _size);
  }

  void _measureSize(Duration _) {
    Size? size = context.size;
    if (_isSizeMeasured && widget.shouldMeasureOnce) return;
    if (size == null) return;
    if (size == Size.zero) return;

    setState(() {
      _isSizeMeasured = true;
      _size = size;
    });
  }
}
