part of '../../admin_general_screen.dart';

class _Stats extends StatelessWidget {
  const _Stats();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return BlocBuilder<AdminOrdersBloc, AdminOrdersState>(
      builder: (context, ordersState) {
        if (ordersState.isLoading) return const LoadingPage(height: 400);
        if (ordersState.hasError) {
          return ErrorPage(message: ordersState.message, height: 400);
        }

        return BlocBuilder<AdminClientsBloc, AdminClientsState>(
          builder: (context, clientsState) {
            if (clientsState.isLoading) return const LoadingPage(height: 400);
            if (clientsState.hasError) {
              return ErrorPage(message: clientsState.message, height: 400);
            }

            final List<List<AdminStatsItem>> itemsGrid = _getItems(
              ordersState: ordersState,
              clientsState: clientsState,
              isMobile: isMobile,
            );

            return Padding(
              padding: const Pad(horizontal: 20),
              child: Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: itemsGrid.map((List<AdminStatsItem> items) {
                  return Row(
                    spacing: 5,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: items.map(_AdminStats.card).toList(),
                  );
                }).toList(),
              ),
            );
          },
        );
      },
    );
  }

  List<List<AdminStatsItem>> _getItems({
    required AdminOrdersState ordersState,
    required AdminClientsState clientsState,
    required bool isMobile,
  }) {
    return [
      [
        AdminStatsItem(title: 'Клиенты', value: clientsState.clientsCount),
        AdminStatsItem.disabled(title: 'Брони'),
        if (!isMobile) ...[
          AdminStatsItem(title: 'Заявки', value: ordersState.requestCount),
          AdminStatsItem(title: 'В очереди', value: ordersState.pendingCount),
          AdminStatsItem(title: 'В работе', value: ordersState.inProgressCount),
        ],
      ],
      if (isMobile)
        [
          AdminStatsItem(title: 'Заявки', value: ordersState.requestCount),
          AdminStatsItem(title: 'В очереди', value: ordersState.pendingCount),
          AdminStatsItem(title: 'В работе', value: ordersState.inProgressCount),
        ],
      [
        AdminStatsItem(
          title: 'Доход за месяц',
          value: ordersState.totalIncome.formatCurrency(),
        ),
      ],
    ];
  }
}
