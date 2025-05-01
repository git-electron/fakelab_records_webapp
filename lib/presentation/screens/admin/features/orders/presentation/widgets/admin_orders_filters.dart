import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/gen/assets.gen.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order_status.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order_type.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/orders/domain/bloc/admin_orders_filters_bloc.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_button.dart';
import 'package:fakelab_records_webapp/presentation/ui/date_picker/app_date_picker_dialog.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_dropdown_button.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_text_field.dart';
import 'package:fakelab_records_webapp/presentation/ui/date_picker/models/date_picker_result.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/tappable.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:flutter/material.dart';

class AdminOrdersFilters extends StatelessWidget {
  const AdminOrdersFilters({super.key});

  @override
  Widget build(BuildContext context) {
    final AdminOrdersFiltersBloc bloc = context.read();

    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Padding(
      padding: const Pad(horizontal: 20),
      child: Column(
        children: [
          if (isMobile)
            Row(
              children: [
                Expanded(child: _searchTextField(context)),
                const Gap(10),
                _selectDateRangeButton(context),
              ],
            ),
          if (isMobile) const Gap(10),
          Row(
            children: [
              if (!isMobile) _selectDateRangeButton(context),
              if (!isMobile) const Gap(10),
              if (!isMobile)
                Expanded(
                  flex: 3,
                  child: _searchTextField(context),
                ),
              if (!isMobile) const Gap(10),
              Expanded(
                child: AppDropdownButton(
                  items: OrderType.values
                      .map((status) => DropdownButtonItem(
                            title: status.title,
                            value: status,
                          ))
                      .toList(),
                  hintText: 'Услуга',
                  onChanged: (type) => bloc.add(
                    AdminOrdersFiltersEvent.typeFilterChanged(type),
                  ),
                ),
              ),
              const Gap(10),
              Expanded(
                child: AppDropdownButton(
                  items: OrderStatus.values
                      .map((status) => DropdownButtonItem(
                            title: status.title,
                            value: status,
                          ))
                      .toList(),
                  hintText: 'Статус заказа',
                  onChanged: (status) => bloc.add(
                    AdminOrdersFiltersEvent.statusFilterChanged(status),
                  ),
                  menuItemBuilder: (item) =>
                      _orderStatusMenuItemBuilder(context, item),
                  selectedItemBuilder: (item) =>
                      _orderStatusSelectedItemBuilder(context, item),
                ),
              ),
              if (!isMobile) const Gap(10),
              if (!isMobile) _createManually(context),
            ],
          ),
          if (isMobile) const Gap(10),
          if (isMobile) _createManually(context),
        ],
      ),
    );
  }

  Widget _searchTextField(BuildContext context) {
    final AdminOrdersFiltersBloc bloc = context.read();

    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return AppTextField(
      hintText:
          'Поиск по имени / юзернейму${isMobile ? '' : ' / айди пользователя'} / айди заказа',
      prefixIcon: Assets.icons.search.light,
      onChanged: (value) => bloc.add(
        AdminOrdersFiltersEvent.searchQueryChanged(value),
      ),
    );
  }

  Widget _selectDateRangeButton(BuildContext context) {
    final AdminOrdersFiltersBloc bloc = context.read();

    return BlocBuilder<AdminOrdersFiltersBloc, AdminOrdersFiltersState>(
      builder: (context, state) {
        return Tappable(
          onTap: () async {
            final DatePickerRangeResult? result =
                await AppDatePickerDialog.showRange(
              context,
              maxDate: DateTime.now(),
              initialDateRange: state.dateRange,
            );
            if (result == null) return;
            if (result.isReset) {
              bloc.add(const AdminOrdersFiltersEvent.dateRangeChanged(null));
            }
            bloc.add(
                AdminOrdersFiltersEvent.dateRangeChanged(result.dateRange));
          },
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                height: 50,
                width: 60,
                alignment: Alignment.center,
                decoration: ShapeDecoration(
                  color: context.colors.card,
                  shape: SmoothRectangleBorder(
                    borderRadius: SmoothBorderRadius(
                      cornerSmoothing: 0.6,
                      cornerRadius: 15,
                    ),
                  ),
                ),
                child: Assets.icons.calendar.light.svg(),
              ),
              if (state.dateRange != null)
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: context.colors.primary,
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 5,
                      color: context.colors.background,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  Widget _orderStatusMenuItemBuilder(
    BuildContext context,
    DropdownButtonItem<OrderStatus> item,
  ) {
    return Row(
      children: [
        Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: item.value.color,
          ),
        ),
        const Gap(10),
        Text(
          item.title,
          style: context.styles.footer1.copyWith(
            color: context.colors.onBackground,
          ),
        ),
      ],
    );
  }

  Widget _orderStatusSelectedItemBuilder(
    BuildContext context,
    DropdownButtonItem<OrderStatus> item,
  ) {
    return Row(
      children: [
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: item.value.color,
          ),
        ),
        const Gap(10),
        Text(
          item.title,
          style: context.styles.body2,
        ),
      ],
    );
  }

  Widget _createManually(BuildContext context) {
    return AppButton.primary(
      onTap: () {},
      text: 'Создать',
      isEnabled: false,
      isExpanded: false,
      icon: Assets.icons.plus.dark,
    );
  }
}
