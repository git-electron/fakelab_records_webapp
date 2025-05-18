part of '../../../../home_screen.dart';

class _AboutGallery extends StatelessWidget {
  const _AboutGallery();

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      children: [
        _ImageCard(
          onTap: () => _onImageTapped(0),
          aspectRatio: 7 / 4,
          image: Assets.images.about.values.first,
        ),
        Row(
          spacing: 5,
          children: List.generate(3, (index) {
            final int imageIndex = index + 1;

            return Expanded(
              child: _ImageCard(
                image: Assets.images.about.values[imageIndex],
                onTap: () => _onImageTapped(imageIndex),
                overlayText: imageIndex == 3
                    ? '+${Assets.images.about.values.length - 3}'
                    : null,
              ),
            );
          }),
        ),
      ],
    );
  }

  void _onImageTapped(int index) {
    $<AppRouter>().push(ImagesViewerRoute(
      images: Assets.images.about.values.map((image) => image.path).toList(),
      initialIndex: index,
      source: ImageSource.asset,
    ));
  }
}
