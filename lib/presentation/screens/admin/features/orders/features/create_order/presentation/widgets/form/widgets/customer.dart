part of '../../../admin_create_order_screen.dart';

class _Customer extends StatelessWidget {
  const _Customer();

  @override
  Widget build(BuildContext context) {
    final AdminCreateOrderBloc bloc = context.read();

    return BlocBuilder<AdminClientsBloc, AdminClientsState>(
      builder: (context, state) {
        if (!state.isLoaded) return const SizedBox();

        final List<DropdownButtonItem<User>> customers = _getCustomers(state);

        return AppDropdownButton(
          items: customers,
          hintText: _hintText,
          isSearchEnabled: true,
          searchHintText: _searchHintText,
          searchMatchFn: _searchMatchFn,
          menuItemBuilder: _customerItemBuilder,
          selectedItemBuilder: _customerItemBuilder,
          onChanged: (client) {
            bloc.add(AdminCreateOrderEvent.customerSelected(client));
          },
        );
      },
    );
  }

  static const String _hintText = 'Заказчик';
  static const String _searchHintText =
      'Поиск по имени / юзернейму / номеру телефона';

  List<DropdownButtonItem<User>> _getCustomers(AdminClientsState state) {
    return state.clients!
        .map((client) => DropdownButtonItem(
              title: client.fullName,
              value: client,
            ))
        .toList();
  }

  bool _searchMatchFn(item, searchQuery) {
    bool isProperFullName = true;
    bool isProperUsername = true;
    bool isProperPhoneNumber = true;

    if (item.value != null) {
      isProperFullName = item.value!.fullName
          .toLowerCase()
          .contains(searchQuery.toLowerCase());

      isProperUsername = item.value!.username
              ?.toLowerCase()
              .contains(searchQuery.toLowerCase()) ??
          false;

      isProperPhoneNumber = phoneNumberFormatter
              .maskText(item.value!.phoneNumber)
              .toLowerCase()
              .contains(phoneNumberFormatter.maskText(
                searchQuery.toLowerCase(),
              )) &&
          phoneNumberFormatter.maskText(searchQuery.toLowerCase()).isNotEmpty;

      return isProperFullName || isProperUsername || isProperPhoneNumber;
    }
    return true;
  }

  Widget _customerItemBuilder(DropdownButtonItem<User> item) {
    return Builder(builder: (context) {
      return Row(
        spacing: 10,
        children: [
          if (item.title.isNotNullAndEmpty)
            Text(
              item.title,
              style: context.styles.footer1.copyWith(
                color: context.colors.onBackground,
              ),
            ),
          if (item.value.username.isNotNullAndEmpty)
            Text(
              '@${item.value.username}',
              style: context.styles.footer1,
            ),
          if (item.value.phoneNumber.isNotNullAndEmpty)
            Text(
              phoneNumberFormatter.maskText(item.value.phoneNumber),
              style: context.styles.footer1,
            ),
        ],
      );
    });
  }
}
