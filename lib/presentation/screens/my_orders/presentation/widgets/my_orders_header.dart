import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import '../../../../../core/theme/theme_extensions.dart';
import 'package:flutter/material.dart';

class MyOrdersHeader extends StatelessWidget {
  const MyOrdersHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.background,
      padding: const Pad(horizontal: 20),
      child: Text(
        'Мои заказы',
        style: context.styles.subtitle1.copyWith(
          color: context.colors.title,
        ),
      ),
    );
  }
}
