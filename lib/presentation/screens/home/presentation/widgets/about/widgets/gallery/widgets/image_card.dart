part of '../../../../../home_screen.dart';

class _ImageCard extends StatelessWidget {
  const _ImageCard({
    required this.image,
    required this.onTap,
    this.aspectRatio = 5 / 4,
    this.overlayText,
  });

  final AssetGenImage image;
  final VoidCallback onTap;
  final double aspectRatio;
  final String? overlayText;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Tappable(
        onTap: onTap,
        child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            shape: BorderRadius.circular(20).smoothShape(),
          ),
          child: Blur(
            blur: overlayText.isNotNullAndEmpty ? 5 : 0,
            colorOpacity: 0,
            overlay: overlayText.isNotNullAndEmpty
                ? Text(
                    overlayText!,
                    style: context.styles.subtitle3.copyWith(
                      color: context.colors.title,
                    ),
                  )
                : const SizedBox(),
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: image.image(fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}
