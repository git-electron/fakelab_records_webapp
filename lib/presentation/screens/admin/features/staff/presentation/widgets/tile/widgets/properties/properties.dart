part of '../../../../admin_staff_screen.dart';

class _Properties extends StatelessWidget {
  const _Properties(this.staffMember);

  final StaffMember staffMember;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5,
      runSpacing: 5,
      children: [
        ..._activities(context),
        ..._services(context),
      ],
    );
  }

  List<Widget> _activities(BuildContext context) =>
      staffMember.activities.map(_PropertyItem.activity).toList();

  List<Widget> _services(BuildContext context) =>
      staffMember.services.map(_PropertyItem.service).toList();
}
