part of '../../admin_edit_staff_member_screen.dart';

class _AvatarAndForm extends StatelessWidget {
  const _AvatarAndForm();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    final List<Widget> formItems = _getFormItems(isMobile);

    if (isMobile) {
      return Column(
        spacing: 20,
        children: formItems,
      );
    }
    return Padding(
      padding: const Pad(top: 60),
      child: Row(
        spacing: 20,
        children: formItems,
      ),
    );
  }

  List<Widget> _getFormItems(bool isMobile) => [
        _AvatarProvider(
          builder: (photoUrl) => _Avatar(
            height: isMobile ? 200 : 150,
            width: isMobile ? null : 150,
            photoUrl: photoUrl,
          ),
        ),
        const _Form(),
      ];
}

class _AvatarProvider extends StatelessWidget {
  const _AvatarProvider({
    required this.builder,
  });

  final Widget Function(String?) builder;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdminEditStaffMemberBloc, AdminEditStaffMemberState>(
      builder: (context, state) => builder(state.avatarFileUrl),
    );
  }
}
