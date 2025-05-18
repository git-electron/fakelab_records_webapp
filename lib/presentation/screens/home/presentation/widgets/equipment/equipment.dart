part of '../../home_screen.dart';

class _Equipment extends StatelessWidget {
  const _Equipment();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: Pad(horizontal: 20),
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _EquipmentHeader(),
          _EquipmentList(),
        ],
      ),
    );
  }
}

