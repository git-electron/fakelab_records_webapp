import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';

import '../../../../../core/theme/theme_extensions.dart';

class HomeScreenPromoText extends StatelessWidget {
  const HomeScreenPromoText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const Pad(horizontal: 20),
      child: Text(
        'Представь, как твоя идея оживает в профессиональной студии с крутым оборудованием и уютной атмосферой. Приходи с треком или свежей задумкой — мы сделаем звук чистым и мощным. Твоя музыка заслуживает лучшего! Забронируй время в пару кликов и погрузись в процесс творчества!',
        style: context.styles.body2,
      ),
    );
  }
}
