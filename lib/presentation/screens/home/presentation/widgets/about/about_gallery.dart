import 'package:blur/blur.dart';
import 'package:fakelab_records_webapp/core/extensions/list_extensions.dart';
import 'package:fakelab_records_webapp/core/gen/assets.gen.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/clickable.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AboutGallery extends StatelessWidget {
  const AboutGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 7 / 4,
          child: Clickable(
            onTap: () {},
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                shape: SmoothRectangleBorder(
                  borderRadius: SmoothBorderRadius(
                    cornerRadius: 20,
                    cornerSmoothing: 0.6,
                  ),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Assets.images.about.values.first.provider(),
                ),
              ),
            ),
          ),
        ),
        const Gap(5),
        Row(
          children: List<Widget>.generate(3, (index) {
            return Expanded(
              child: AspectRatio(
                aspectRatio: 5 / 4,
                child: Clickable(
                  onTap: () {},
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      shape: SmoothRectangleBorder(
                        borderRadius: SmoothBorderRadius(
                          cornerRadius: 20,
                          cornerSmoothing: 0.6,
                        ),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Assets.images.about.values
                            .sublist(1)[index]
                            .provider(),
                      ),
                    ),
                    child: Blur(
                      blur: index == 2 ? 5 : 0,
                      colorOpacity: 0,
                      overlay: index == 2
                          ? Text(
                              '+${Assets.images.about.values.length - 3}',
                              style: context.styles.subtitle3.copyWith(
                                color: context.colors.title,
                              ),
                            )
                          : const SizedBox(),
                      child: const SizedBox(),
                    ),
                  ),
                ),
              ),
            );
          }).alternateWith(const Gap(5)),
        ),
      ],
    );
  }
}
