part of '../../admin_staff_screen.dart';

class _Tile extends StatelessWidget {
  const _Tile(this.staffMember);

  final StaffMember staffMember;

  @override
  Widget build(BuildContext context) {
    final AdminStaffBloc bloc = context.read();

    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Tappable(
      onTap: () => context.pushRoute(AdminEditStaffMemberRoute(
        id: staffMember.id,
        adminStaffBloc: bloc,
        staffMember: staffMember,
      )),
      child: Container(
        padding: Pad(all: isMobile ? 15 : 20),
        decoration: ShapeDecoration(
          color: context.colors.card,
          shape: BorderRadius.circular(20).smoothShape(),
        ),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Header(staffMember),
            _Properties(staffMember),
          ],
        ),
      ),
    );
  }
}
