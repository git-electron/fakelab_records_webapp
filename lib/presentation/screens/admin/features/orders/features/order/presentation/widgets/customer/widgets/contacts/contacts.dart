part of '../../../../admin_order_screen.dart';

class _Contacts extends StatelessWidget {
  const _Contacts(this.customer);

  final User customer;

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
          text: '${customer.id}',
          icon: Assets.icons.sort.light,
          isEnabled: false,
        ),
        if (customer.username.isNotNullAndEmpty)
          _ContactItem(
            text: '${customer.username}',
            icon: Assets.icons.user.light,
          ),
        if (customer.phoneNumber.isNotNullAndEmpty)
          _ContactItem(
            text: phoneNumberFormatter.maskText(customer.phoneNumber),
            icon: Assets.icons.phone.light,
            shouldDisplayCallButton: true,
          ),
      ];
}
