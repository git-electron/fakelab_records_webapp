import 'package:blur/blur.dart';
import 'package:fakelab_records_webapp/core/di/injector.dart';
import 'package:fakelab_records_webapp/core/extensions/list_extensions.dart';
import 'package:fakelab_records_webapp/core/gen/assets.gen.dart';
import 'package:fakelab_records_webapp/core/router/router.dart';
import 'package:fakelab_records_webapp/core/router/router.gr.dart';
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
            onTap: () => _onImageTapped(0),
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
            final int imageIndex = index + 1;

            return Expanded(
              child: AspectRatio(
                aspectRatio: 5 / 4,
                child: Clickable(
                  onTap: () => _onImageTapped(imageIndex),
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      shape: SmoothRectangleBorder(
                        borderRadius: SmoothBorderRadius(
                          cornerRadius: 20,
                          cornerSmoothing: 0.6,
                        ),
                      ),
                    ),
                    child: Blur(
                      blur: imageIndex == 3 ? 5 : 0,
                      colorOpacity: 0,
                      overlay: imageIndex == 3
                          ? Text(
                              '+${Assets.images.about.values.length - 3}',
                              style: context.styles.subtitle3.copyWith(
                                color: context.colors.title,
                              ),
                            )
                          : const SizedBox(),
                      child: SizedBox(
                        height: double.infinity,
                        width: double.infinity,
                        child: Assets.images.about.values[imageIndex]
                            .image(fit: BoxFit.cover),
                      ),
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

  void _onImageTapped(int index) {
    $<AppRouter>().push(ImagesViewerRoute(
      images: Assets.images.about.values.map((image) => image.path).toList(),
      initialIndex: index,
    ));
  }
}
