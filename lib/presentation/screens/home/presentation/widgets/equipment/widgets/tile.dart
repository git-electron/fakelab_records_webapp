part of '../../../home_screen.dart';

class _EquipmentTile extends StatelessWidget {
  const _EquipmentTile({
    required this.title,
    required this.description,
    required this.icon,
  });

  final String title;
  final String description;
  final SvgGenImage icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const Pad(vertical: 10),
      child: Row(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon.svg(
            height: 60,
            width: 60,
          ),
          Expanded(
            child: Column(
              spacing: 5,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title.toUpperCase(),
                  style: context.styles.title3.copyWith(fontSize: 14),
                ),
                Text(
                  description,
                  style: context.styles.footer2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
