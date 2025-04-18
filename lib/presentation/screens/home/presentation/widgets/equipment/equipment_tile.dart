import '../../../../../../core/gen/assets.gen.dart';
import '../../../../../../core/theme/theme_extensions.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EquipmentTile extends StatelessWidget {
  const EquipmentTile({
    required this.title,
    required this.description,
    required this.image,
    super.key,
  });

  final String title;
  final String description;
  final AssetGenImage image;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: ShapeDecoration(
                gradient: context.colors.primaryGradient,
                shape: SmoothRectangleBorder(
                  borderRadius: SmoothBorderRadius(
                    cornerRadius: 20,
                    cornerSmoothing: 0.6,
                  ),
                ),
              ),
            ),
            image.image(
              height: 120,
              width: 120,
              fit: BoxFit.contain,
            ),
          ],
        ),
        const Gap(10),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title.toUpperCase(),
                style: context.styles.title3.copyWith(fontSize: 14),
              ),
              const Gap(5),
              Text(
                description,
                style: context.styles.footer2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
