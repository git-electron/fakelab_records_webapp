part of '../../../../admin_staff_screen.dart';

class _Header extends StatelessWidget {
  const _Header(this.staffMember);

  final StaffMember staffMember;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _Avatar(staffMember.photoUrl),
        _Details(staffMember),
        _ActionButtons(staffMember),
      ],
    );
  }
}
