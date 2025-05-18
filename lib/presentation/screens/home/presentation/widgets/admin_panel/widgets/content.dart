part of '../../../home_screen.dart';

class _AdminPanelContent extends StatelessWidget {
  const _AdminPanelContent();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdminPanelBloc, AdminPanelState>(
      builder: (context, state) {
        if (state.isCollapsed) return const _AdminPanelDisclaimer();

        if (state.isLoading) return const LoadingPage(height: 250);
        if (state.hasError) {
          return ErrorPage(message: state.message, height: 250);
        }

        final List<List<AdminStatsItem>> itemsGrid = _getItems(state);

        return Column(
          spacing: 10,
          children: itemsGrid.map((List<AdminStatsItem> items) {
            return Row(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: items.map(_AdminStats.card).toList(),
            );
          }).toList(),
        );
      },
    );
  }

  List<List<AdminStatsItem>> _getItems(AdminPanelState state) {
    return [
      [
        AdminStatsItem(title: 'Клиенты', value: state.clientsCount),
        AdminStatsItem.disabled(title: 'Брони'),
      ],
      [
        AdminStatsItem(title: 'Заявки', value: state.requestCount),
        AdminStatsItem(title: 'В очереди', value: state.pendingCount),
        AdminStatsItem(title: 'В работе', value: state.inProgressCount),
      ],
      [
        AdminStatsItem(
          title: 'Доход за месяц',
          value: state.totalIncome.formatCurrency(),
        ),
      ],
    ];
  }
}
