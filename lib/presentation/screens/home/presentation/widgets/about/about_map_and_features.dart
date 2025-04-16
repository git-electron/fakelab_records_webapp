import 'package:fakelab_records_webapp/core/gen/assets.gen.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:gap/gap.dart';

class AboutMapAndFeatures extends StatelessWidget {
  const AboutMapAndFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            height: 180,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              shape: SmoothRectangleBorder(
                borderRadius: SmoothBorderRadius(
                  cornerRadius: 20,
                  cornerSmoothing: 0.6,
                ),
              ),
            ),
            child: const HtmlWidget('''
<iframe src="https://yandex.ru/map-widget/v1/?z=12&ol=biz&oid=64952203819" width="100%" height="180" frameborder="0"></iframe>
'''),
          ),
        ),
        const Gap(10),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AboutFeature(
              text: 'ПН-ВС 8:00 — 23:00',
              icon: Assets.icons.clock,
            ),
            const Gap(10),
            AboutFeature(
              text: 'Улица Комсомола, д. 2,\nофис 14',
              icon: Assets.icons.pin,
            ),
            const Gap(10),
            AboutFeature.widget(
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
              iconColor: context.colors.primaryGradientEnd,
            ),
            const Gap(10),
            AboutFeature(
              text: '10 минут пешком от\nметро',
              icon: Assets.icons.map,
            ),
          ],
        ),
      ],
    );
  }
}

class AboutFeature extends StatelessWidget {
  const AboutFeature({
    required this.text,
    required this.icon,
    this.iconColor,
    super.key,
  }) : widget = null;

  const AboutFeature.widget({
    required this.widget,
    required this.icon,
    this.iconColor,
    super.key,
  }) : text = null;

  final String? text;
  final Widget? widget;
  final SvgGenImage icon;

  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        icon.svg(),
        const Gap(10),
        if (text != null) Text(text!, style: context.styles.body3),
        if (widget != null) widget!,
      ],
    );
  }
}
