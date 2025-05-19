part of '../../admin_create_staff_member_screen.dart';

class CreateStaffProperties extends StatelessWidget {
  const CreateStaffProperties({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Род деятельности', style: context.styles.subtitle3),
        Wrap(
          spacing: 5,
          runSpacing: 5,
          children: _activities(context),
        ),
        Text('Услуги', style: context.styles.subtitle3),
        Wrap(
          spacing: 5,
          runSpacing: 5,
          children: _serviceTypes(context),
        ),
      ],
    );
  }

  List<Widget> _activities(BuildContext context) =>
      StaffActivity.values.map(_PropertyItem.activity).toList();

  List<Widget> _serviceTypes(BuildContext context) =>
      StaffServiceType.values.map(_PropertyItem.service).toList();
}
