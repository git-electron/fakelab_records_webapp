// ignore_for_file: use_build_context_synchronously

import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/extensions/num_extensions.dart';
import 'package:fakelab_records_webapp/core/extensions/string_extensions.dart';
import 'package:fakelab_records_webapp/core/formatters/currency_input_formatter.dart';
import 'package:fakelab_records_webapp/core/gen/assets.gen.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order_status.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_staff_bloc/admin_staff_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/orders/features/order/domain/bloc/admin_order_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/domain/models/staff_member.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_button.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_confirmation_dialog/app_confirmation_dialog.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_dropdown_button.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_dropdown_dialog/app_dropdown_dialog.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_text_field_dialog/app_text_field_dialog.dart';
import 'package:fakelab_records_webapp/presentation/ui/avatar/avatar.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class AdminOrderScreenActions extends StatelessWidget {
  const AdminOrderScreenActions({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: context.colors.card,
        shape: SmoothRectangleBorder(
          borderRadius: SmoothBorderRadius(
            cornerRadius: 20,
            cornerSmoothing: 0.6,
          ),
        ),
      ),
      padding: const Pad(all: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Действия', style: context.styles.body1),
          const Gap(10),
          if (isMobile) ...[
            _actualActions(context),
            const Gap(10),
            _allActions(context),
          ] else
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: _actualActions(context)),
                const Gap(20),
                Expanded(child: _allActions(context)),
              ],
            ),
        ],
      ),
    );
  }

  Widget _actualActions(BuildContext context) {
    return BlocBuilder<AdminOrderBloc, AdminOrderState>(
      builder: (context, state) {
        final OrderStatus status = state.order!.status;

        if ([OrderStatus.COMPLETED, OrderStatus.CANCELLED].contains(status)) {
          return const SizedBox();
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Актуальное', style: context.styles.footer1),
            const Gap(10),
            const ActualActions(),
          ],
        );
      },
    );
  }

  Widget _allActions(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Все действия', style: context.styles.footer1),
          const Gap(10),
          const AllActions(),
        ],
      );
}

class ActualActions extends StatelessWidget {
  const ActualActions({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdminOrderBloc, AdminOrderState>(
      builder: (context, state) {
        final OrderStatus status = state.order!.status;

        return switch (status) {
          OrderStatus.REQUEST => _requestActions(context),
          OrderStatus.PENDING => _pendingActions(context),
          OrderStatus.IN_PROGRESS => _inProgressActions(context),
          OrderStatus.AWAITING_CONFIRMATION =>
            _awaitingConfirmationActions(context),
          _ => const SizedBox(),
        };
      },
    );
  }

  Widget _requestActions(BuildContext context) {
    final AdminOrderBloc bloc = context.read();

    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    List<Widget> actions = [
      BlocBuilder<AdminOrderBloc, AdminOrderState>(
        builder: (context, state) {
          return BlocBuilder<AdminStaffBloc, AdminStaffState>(
            builder: (context, staffState) {
              final Order order = state.order!;
              final double totalCost = order.type.totalCost;

              return ExpandedWrapper(
                child: AppButton(
                  onTap: () async {
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
                    AppDropdownDialog.show<StaffMember>(
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
                      items: staffState.staffMembers!
                          .where((staffMember) => staffMember.canAssign(order))
                          .map((staffMember) => DropdownButtonItem(
                                title: staffMember.fullName,
                                value: staffMember,
                              ))
                          .toList(),
                    ).then((staffMember) {
                      if (staffMember != null && isConfirmed) {
                        bloc.add(
                          AdminOrderEvent.updateOrderStatus(
                            OrderStatus.PENDING,
                            totalCost: newTotalCost,
                            assignee: staffMember,
                          ),
                        );
                      }
                    });
                  },
                  text: 'Принять',
                  backgroundColor: context.colors.statuses.pending,
                  contentColor: context.colors.background,
                ),
              );
            },
          );
        },
      ),
      const Gap(5),
      ExpandedWrapper(
        child: AppButton(
          onTap: () => AppTextFieldDialog.show(
            context,
            title: 'Отменить заказ',
            hintText: 'Причина отмены',
            autofillHints: [
              'По желанию заказчика',
              'Не удалось связаться с заказчиком',
            ],
            description:
                'Укажи причину отмены заказа. Она отобразится в мини-приложении заказчика',
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
      ),
    ];

    return isMobile ? Row(children: actions) : Column(children: actions);
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

  Widget _pendingActions(BuildContext context) {
    final AdminOrderBloc bloc = context.read();

    return AppButton(
      onTap: () => AppConfirmationDialog.show(
        context,
        title: 'Подтверждение',
        description: 'Взять этот заказ в работу?',
      ).then((isConfirmed) {
        if (isConfirmed ?? false) {
          bloc.add(
            const AdminOrderEvent.updateOrderStatus(
              OrderStatus.IN_PROGRESS,
            ),
          );
        }
      }),
      text: 'Взять в работу',
      backgroundColor: context.colors.statuses.inProgress,
      contentColor: context.colors.background,
    );
  }

  Widget _inProgressActions(BuildContext context) {
    final AdminOrderBloc bloc = context.read();

    return AppButton(
      onTap: () => AppConfirmationDialog.show(
        context,
        title: 'Подтверждение',
        description: 'Заказ готов к передаче на проверку заказчику?',
      ).then((isConfirmed) {
        if (isConfirmed ?? false) {
          bloc.add(
            const AdminOrderEvent.updateOrderStatus(
              OrderStatus.AWAITING_CONFIRMATION,
            ),
          );
        }
      }),
      text: 'На проверку клиентом',
      backgroundColor: context.colors.statuses.awaitingConfirmation,
      contentColor: context.colors.background,
    );
  }

  Widget _awaitingConfirmationActions(BuildContext context) {
    final AdminOrderBloc bloc = context.read();

    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    List<Widget> actions = [
      ExpandedWrapper(
        child: AppButton(
          onTap: () => AppConfirmationDialog.show(
            context,
            title: 'Подтверждение',
            description: 'Заказчик оплатил заказ и подтвердил готовность?',
          ).then((isConfirmed) {
            if (isConfirmed ?? false) {
              bloc.add(
                const AdminOrderEvent.updateOrderStatus(
                  OrderStatus.COMPLETED,
                ),
              );
            }
          }),
          text: 'Заказ готов',
          backgroundColor: context.colors.statuses.completed,
          contentColor: context.colors.background,
        ),
      ),
      const Gap(5),
      ExpandedWrapper(
        child: AppButton(
          onTap: () => AppTextFieldDialog.show(
            context,
            title: 'Вернуть в работу',
            hintText: 'Причина возврата',
            autofillHints: ['Правки от заказчика'],
            description:
                'Укажи причину возврата заказа. Она отобразится в мини-приложении заказчика',
          ).then((message) => bloc.add(
                AdminOrderEvent.updateOrderStatus(
                  OrderStatus.IN_PROGRESS,
                  message: message,
                ),
              )),
          text: 'Вернуть в работу',
          backgroundColor: context.colors.statuses.inProgress,
          contentColor: context.colors.background,
        ),
      ),
    ];

    return isMobile ? Row(children: actions) : Column(children: actions);
  }
}

class ExpandedWrapper extends StatelessWidget {
  const ExpandedWrapper({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return isMobile ? Expanded(child: child) : child;
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
