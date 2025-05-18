part of '../../../../../home_screen.dart';

class _AboutYandexMapsIframe extends StatelessWidget {
  const _AboutYandexMapsIframe();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 180,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          shape: BorderRadius.circular(20).smoothShape(),
        ),
        child: const HtmlWidget(yandexMapsIFrame),
      ),
    );
  }
}
