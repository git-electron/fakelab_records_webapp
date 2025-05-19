part of '../../../../admin_clients_screen.dart';

class _Contacts extends StatelessWidget {
  const _Contacts(this.client);

  final User client;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return switch (isMobile) {
      true => Column(children: _contacts),
      false => Row(children: _contacts),
    };
  }

  List<Widget> get _contacts => [
        _ContactItem(
          text: '${client.id}',
          icon: Assets.icons.sort.light,
          isEnabled: false,
        ),
        if (client.username.isNotNullAndEmpty)
          _ContactItem(
            text: '${client.username}',
            icon: Assets.icons.user.light,
          ),
        if (client.phoneNumber.isNotNullAndEmpty)
          _ContactItem(
            text: phoneNumberFormatter.maskText(client.phoneNumber),
            icon: Assets.icons.phone.light,
            shouldDisplayCallButton: true,
          ),
      ];
}
