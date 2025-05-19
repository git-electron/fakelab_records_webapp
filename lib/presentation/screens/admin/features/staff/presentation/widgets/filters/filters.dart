part of '../../admin_staff_screen.dart';

class _Filters extends StatelessWidget {
  const _Filters();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Padding(
      padding: const Pad(horizontal: 20),
      child: Column(
        spacing: 10,
        children: [
          if (isMobile) const _SearchField(),
          Row(
            spacing: 10,
            children: [
              if (!isMobile) const _SearchField(),
              const _ServiceFilter(),
              const _AddStaffMemberButton(),
            ],
          ),
        ],
      ),
    );
  }
}
