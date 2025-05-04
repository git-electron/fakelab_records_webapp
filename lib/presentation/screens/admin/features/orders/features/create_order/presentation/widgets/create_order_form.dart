import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/domain/models/user/user.dart';
import 'package:fakelab_records_webapp/core/extensions/string_extensions.dart';
import 'package:fakelab_records_webapp/core/formatters/phone_number_formatter.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order_type.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_clients_bloc/admin_clients_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/orders/features/create_order/domain/bloc/admin_create_order_bloc.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_dropdown_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class CreateOrderForm extends StatelessWidget {
  const CreateOrderForm({super.key});

  @override
  Widget build(BuildContext context) {
    final AdminCreateOrderBloc bloc = context.read();

    return Column(
      children: [
        BlocBuilder<AdminClientsBloc, AdminClientsState>(
          builder: (context, state) {
            if (!state.isLoaded) return const SizedBox();

            return AppDropdownButton(
              items: state.clients!
                  .map((client) => DropdownButtonItem(
                        title: client.fullName,
                        value: client,
                      ))
                  .toList(),
              hintText: 'Заказчик',
              searchHintText: 'Поиск по имени / юзернейму / номеру телефона',
              isSearchEnabled: true,
              searchMatchFn: (item, searchQuery) {
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
                      phoneNumberFormatter
                          .maskText(searchQuery.toLowerCase())
                          .isNotEmpty;

                  return isProperFullName ||
                      isProperUsername ||
                      isProperPhoneNumber;
                }
                return true;
              },
              menuItemBuilder: (item) => _customerItemBuilder(context, item),
              selectedItemBuilder: (item) =>
                  _customerItemBuilder(context, item),
              onChanged: (client) {
                bloc.add(
                  AdminCreateOrderEvent.customerSelected(client),
                );
              },
            );
          },
        ),
        const Gap(10),
        AppDropdownButton(
          items: OrderType.values
              .map((type) => DropdownButtonItem(
                    title: type.title,
                    value: type,
                  ))
              .toList(),
          hintText: 'Тип заказа',
          onChanged: (type) {
            bloc.add(
              AdminCreateOrderEvent.orderTypeSelected(type),
            );
          },
        )
      ],
    );
  }

  Widget _customerItemBuilder(
    BuildContext context,
    DropdownButtonItem<User> item,
  ) {
    return Row(
      children: [
        if (item.title.isNotNullAndEmpty)
          Padding(
            padding: const Pad(right: 10),
            child: Text(
              item.title,
              style: context.styles.footer1.copyWith(
                color: context.colors.onBackground,
              ),
            ),
          ),
        if (item.value.username.isNotNullAndEmpty)
          Padding(
            padding: const Pad(right: 10),
            child: Text(
              '@${item.value.username}',
              style: context.styles.footer1,
            ),
          ),
        if (item.value.phoneNumber.isNotNullAndEmpty)
          Text(
            phoneNumberFormatter.maskText(item.value.phoneNumber),
            style: context.styles.footer1,
          ),
      ],
    );
  }
}
