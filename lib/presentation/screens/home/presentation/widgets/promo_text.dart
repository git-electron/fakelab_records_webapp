part of '../home_screen.dart';

class _PromoText extends StatelessWidget {
  const _PromoText();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const Pad(horizontal: 20),
      child: Text(
        _text,
        style: context.styles.body2,
      ),
    );
  }

  static const String _text =
      'Представь, как твоя идея оживает в профессиональной студии с крутым оборудованием и уютной атмосферой. Приходи с треком или свежей задумкой — мы сделаем звук чистым и мощным. Твоя музыка заслуживает лучшего! Забронируй время в пару кликов и погрузись в процесс творчества!';
}
