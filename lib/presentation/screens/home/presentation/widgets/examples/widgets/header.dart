part of '../../../home_screen.dart';

class _ExamplesHeader extends StatelessWidget {
  const _ExamplesHeader();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.background,
      child: Text(
        'Примеры работ',
        style: context.styles.subtitle1.copyWith(
          color: context.colors.title,
        ),
      ),
    );
  }
}