import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/telegram/telegram_meta_wrapper.dart';
import 'package:flutter/widgets.dart';

class SafeAreaWrapper extends StatelessWidget {
  const SafeAreaWrapper({
    required this.child,
    this.top = false,
    this.left = false,
    this.right = false,
    this.bottom = false,
    super.key,
  });

  const SafeAreaWrapper.all({
    required this.child,
    super.key,
  })  : top = true,
        left = true,
        right = true,
        bottom = true;

  final Widget child;

  final bool top;
  final bool left;
  final bool right;
  final bool bottom;

  @override
  Widget build(BuildContext context) {
    return TelegramMetaWrapper(builder: (context, meta) {
      return Padding(
        padding: Pad(
          top: top ? meta.totalSafeAreaInset.top : 0,
          left: left ? meta.totalSafeAreaInset.left : 0,
          right: right ? meta.totalSafeAreaInset.right : 0,
          bottom: bottom ? meta.totalSafeAreaInset.bottom : 0,
        ),
        child: child,
      );
    });
  }
}
