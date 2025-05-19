part of '../../admin_order_screen.dart';

class _Actions extends StatelessWidget {
  const _Actions();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: context.colors.card,
        shape: BorderRadius.circular(20).smoothShape(),
      ),
      padding: const Pad(all: 20),
      child: BlocBuilder<AdminOrderBloc, AdminOrderState>(
        builder: (context, state) {
          final List<Widget> actions = _getActions(state);

          return Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Действия', style: context.styles.body1),
              if (isMobile) ...actions,
              if (!isMobile) Row(spacing: 10, children: actions),
            ],
          );
        },
      ),
    );
  }

  List<Widget> _getActions(AdminOrderState state) => [
        if (state.hasActualActions) _ActualActions(state.order!),
        _AllActions(state.order!),
      ];
}

enum _ExpandedWrapperType { mobile, desktop }

class _ExpandedWrapper extends StatelessWidget {
  const _ExpandedWrapper.mobile({required this.child})
      : type = _ExpandedWrapperType.mobile;

  const _ExpandedWrapper.desktop({required this.child})
      : type = _ExpandedWrapperType.desktop;

  final Widget child;
  final _ExpandedWrapperType type;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;
    final bool shouldExpand = switch (type) {
      _ExpandedWrapperType.mobile => isMobile,
      _ExpandedWrapperType.desktop => !isMobile,
    };

    return shouldExpand ? Expanded(child: child) : child;
  }
}

class AllActions extends StatelessWidget {
  const AllActions({super.key});

  @override
  Widget build(BuildContext context) {
    final AdminOrderBloc bloc = context.read();

    return BlocBuilder<AdminOrderBloc, AdminOrderState>(
      builder: (context, state) {
        final Order order = state.order!;
        final double totalCost = order.type.totalCost;

        return Column(
          children: [
            BlocBuilder<AdminStaffBloc, AdminStaffState>(
              builder: (context, staffState) {
                return AppButton.primary(
                  onTap: () {
                    AppDropdownDialog.show(
                      context,
                      title: 'Изменить статус',
                      hintText: 'Статус заказа',
                      description: 'Укажи новый статус заказа',
                      initialValue: order.status,
                      menuItemBuilder: (item) =>
                          _orderStatusMenuItemBuilder(context, item),
                      selectedItemBuilder: (item) =>
                          _orderStatusSelectedItemBuilder(context, item),
                      items: OrderStatus.values
                          .map((status) => DropdownButtonItem(
                                title: status.title,
                                value: status,
                              ))
                          .toList(),
                    ).then((status) async {
                      if (status != null && status != order.status) {
                        if (order.status == OrderStatus.REQUEST) {
                          late bool isConfirmed;
                          double? newTotalCost;

                          if (order.costFrom) {
                            await AppTextFieldDialog.show(
                              context,
                              title: 'Принять заказ',
                              hintText: 'Стоимость',
                              keyboardType: TextInputType.number,
                              autofillHints: [1, 1.5, 2]
                                  .map((x) => (totalCost * x).formatCurrency())
                                  .toList(),
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                                CurrencyTextInputFormatter(),
                              ],
                              description:
                                  'Укажи итоговую стоимость, на которую вы договорились с заказчиком',
                            ).then((totalCostString) {
                              newTotalCost = double.tryParse(
                                  totalCostString?.extractNumerals() ?? '');
                              if (newTotalCost != null) isConfirmed = true;
                            });
                          } else {
                            await AppConfirmationDialog.show(
                              context,
                              title: 'Подтверждение',
                              description:
                                  'Подтвердить заказ? Стоимость фиксированная — ${order.totalCost.formatCurrency()}',
                            ).then((value) {
                              isConfirmed = value ?? false;
                            });
                          }
                          return AppDropdownDialog.show<StaffMember>(
                            context,
                            title: 'Указать исполнителя',
                            hintText: 'Исполнитель заказа',
                            description: 'Укажи исполнителя заказа',
                            isSearchEnabled: true,
                            searchHintText: 'Поиск по имени / псевдониму',
                            initialValue: order.assignee,
                            menuItemBuilder: (item) =>
                                _orderAssigneeMenuItemBuilder(context, item),
                            selectedItemBuilder: (item) =>
                                _orderAssigneeSelectedItemBuilder(
                                    context, item),
                            searchMatchFn: (item, searchQuery) {
                              bool isProperFullName = true;
                              bool isProperUsername = true;

                              if (item.value != null) {
                                isProperFullName = item.value!.fullName
                                    .toLowerCase()
                                    .contains(searchQuery.toLowerCase());

                                isProperUsername = item.value!.username
                                        ?.toLowerCase()
                                        .contains(searchQuery.toLowerCase()) ??
                                    false;
                              }

                              return isProperFullName || isProperUsername;
                            },
                            items: staffState.staffMembers!
                                .where((staffMember) =>
                                    staffMember.canAssign(order))
                                .map((staffMember) => DropdownButtonItem(
                                      title: staffMember.fullName,
                                      value: staffMember,
                                    ))
                                .toList(),
                          ).then((staffMember) {
                            if (staffMember != null && isConfirmed) {
                              bloc.add(
                                AdminOrderEvent.updateOrderStatus(
                                  status,
                                  totalCost: newTotalCost,
                                  assignee: staffMember,
                                ),
                              );
                            }
                          });
                        }
                        if (status == OrderStatus.CANCELLED) {
                          return AppTextFieldDialog.show(
                            context,
                            title: 'Уточни причину',
                            hintText: 'Причина отмены',
                            autofillHints: [
                              'По желанию заказчика',
                              'Не удалось связаться с заказчиком',
                            ],
                            description:
                                'Укажи причину отмены заказа. Она отобразится в боте и мини-приложении заказчика',
                          ).then((message) {
                            if (message != null) {
                              bloc.add(
                                AdminOrderEvent.updateOrderStatus(
                                  status,
                                  message: message,
                                ),
                              );
                            }
                          });
                        }
                        bloc.add(
                          AdminOrderEvent.updateOrderStatus(status),
                        );
                      }
                    });
                  },
                  icon: Assets.icons.pencil.dark,
                  text: 'Изменить статус',
                );
              },
            ),
            if ([
              OrderStatus.COMPLETED,
              OrderStatus.CANCELLED,
              OrderStatus.REQUEST
            ].contains(order.status))
              const SizedBox()
            else
              Column(
                children: [
                  const Gap(5),
                  AppButton.primary(
                    onTap: () => AppTextFieldDialog.show(
                      context,
                      title: 'Изменить стоимость',
                      hintText: 'Стоимость',
                      keyboardType: TextInputType.number,
                      autofillHints: [1, 1.5, 2]
                          .map((x) => (totalCost * x).formatCurrency())
                          .toList(),
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        CurrencyTextInputFormatter(),
                      ],
                      description:
                          'Укажи итоговую стоимость, на которую вы договорились с заказчиком',
                    ).then((totalCostString) {
                      final double? newTotalCost = double.tryParse(
                          totalCostString?.extractNumerals() ?? '');
                      if (newTotalCost != null) {
                        bloc.add(
                          AdminOrderEvent.updateOrderTotalCost(newTotalCost),
                        );
                      }
                    }),
                    icon: Assets.icons.money.dark,
                    text: 'Изменить стоимость',
                  ),
                  const Gap(5),
                  BlocBuilder<AdminStaffBloc, AdminStaffState>(
                    builder: (context, state) {
                      return AppButton.primary(
                        onTap: () => AppDropdownDialog.show<StaffMember>(
                          context,
                          title: 'Изменить исполнителя',
                          hintText: 'Исполнитель заказа',
                          description: 'Укажи нового исполнителя заказа',
                          isSearchEnabled: true,
                          searchHintText: 'Поиск по имени / псевдониму',
                          initialValue: order.assignee,
                          menuItemBuilder: (item) =>
                              _orderAssigneeMenuItemBuilder(context, item),
                          selectedItemBuilder: (item) =>
                              _orderAssigneeSelectedItemBuilder(context, item),
                          searchMatchFn: (item, searchQuery) {
                            bool isProperFullName = true;
                            bool isProperUsername = true;

                            if (item.value != null) {
                              isProperFullName = item.value!.fullName
                                  .toLowerCase()
                                  .contains(searchQuery.toLowerCase());

                              isProperUsername = item.value!.username
                                      ?.toLowerCase()
                                      .contains(searchQuery.toLowerCase()) ??
                                  false;
                            }

                            return isProperFullName || isProperUsername;
                          },
                          items: state.staffMembers!
                              .where(
                                  (staffMember) => staffMember.canAssign(order))
                              .map((staffMember) => DropdownButtonItem(
                                    title: staffMember.fullName,
                                    value: staffMember,
                                  ))
                              .toList(),
                        ).then((staffMember) {
                          if (staffMember != null &&
                              staffMember != order.assignee) {
                            bloc.add(
                              AdminOrderEvent.updateOrderAssignee(staffMember),
                            );
                          }
                        }),
                        icon: Assets.icons.user.dark,
                        text: 'Изменить исполнителя',
                      );
                    },
                  ),
                ],
              ),
            if ([OrderStatus.COMPLETED, OrderStatus.CANCELLED]
                .contains(order.status))
              const SizedBox()
            else
              Column(
                children: [
                  const Gap(5),
                  AppButton(
                    onTap: () => AppTextFieldDialog.show(
                      context,
                      title: 'Отменить заказ',
                      hintText: 'Причина отмены',
                      autofillHints: [
                        'По желанию заказчика',
                        'Не удалось связаться с заказчиком',
                      ],
                      description:
                          'Укажи причину отмены заказа. Она отобразится в боте и мини-приложении заказчика',
                    ).then((message) {
                      if (message != null) {
                        bloc.add(
                          AdminOrderEvent.updateOrderStatus(
                            OrderStatus.CANCELLED,
                            message: message,
                          ),
                        );
                      }
                    }),
                    text: 'Отменить',
                    backgroundColor: context.colors.primary,
                    contentColor: context.colors.onBackground,
                  ),
                ],
              ),
          ],
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

  Widget _orderAssigneeMenuItemBuilder(
    BuildContext context,
    DropdownButtonItem<StaffMember> item,
  ) {
    return Row(
      children: [
        if (item.value.photoUrl.isNotNullAndEmpty)
          Padding(
            padding: const Pad(right: 10),
            child: Avatar(
              photoUrl: item.value.photoUrl!,
              size: 30,
            ),
          ),
        Text(
          item.title,
          style: context.styles.footer1.copyWith(
            color: context.colors.onBackground,
          ),
        ),
      ],
    );
  }

  Widget _orderAssigneeSelectedItemBuilder(
    BuildContext context,
    DropdownButtonItem<StaffMember> item,
  ) {
    return Row(
      children: [
        if (item.value.photoUrl.isNotNullAndEmpty)
          Padding(
            padding: const Pad(right: 10),
            child: Avatar(
              photoUrl: item.value.photoUrl!,
              size: 30,
            ),
          ),
        Text(
          item.title,
          style: context.styles.body2,
        ),
      ],
    );
  }
}
