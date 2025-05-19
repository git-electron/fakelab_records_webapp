part of '../../../home_screen.dart';

class _EquipmentHeader extends StatelessWidget {
  const _EquipmentHeader();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.background,
      child: Text(
        'Наше оборудование',
        style: context.styles.subtitle1.copyWith(
          color: context.colors.title,
        ),
      ),
    );
  }
}
