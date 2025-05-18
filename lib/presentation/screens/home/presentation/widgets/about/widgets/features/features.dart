part of '../../../../home_screen.dart';

class _AboutFeatures extends StatelessWidget {
  const _AboutFeatures();

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const _AboutYandexMapsIframe(),
        Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _AboutFeature(
              text: 'ПН-ВС 8:00 — 23:00',
              icon: Assets.icons.clock.light,
            ),
            _AboutFeature(
              text: 'Улица Комсомола, д. 2,\nофис 14',
              icon: Assets.icons.pin.light,
            ),
            _AboutFeature.widget(
              widget: Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(text: 'Станция метро\n'),
                    TextSpan(
                      text: '«Площадь Ленина»',
                      style: context.styles.body3.copyWith(
                        color: context.colors.primaryGradientEnd,
                      ),
                    ),
                  ],
                ),
                style: context.styles.body3,
              ),
              icon: Assets.icons.subway,
            ),
            _AboutFeature(
              text: '10 минут пешком от\nметро',
              icon: Assets.icons.map.light,
            ),
          ],
        ),
      ],
    );
  }
}
