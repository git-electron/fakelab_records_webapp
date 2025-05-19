part of '../admin_orders_screen.dart';

class _List extends StatelessWidget {
  const _List();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const Pad(horizontal: 20),
        child: BlocBuilder<AdminOrdersBloc, AdminOrdersState>(
          builder: (context, state) {
            return BlocBuilder<AdminOrdersFiltersBloc, AdminOrdersFiltersState>(
              builder: (context, filtersState) {
                if (state.isLoading) return const LoadingPage(height: 500);
                if (state.hasError) {
                  return ErrorPage(message: state.message, height: 500);
                }

                final List<Order> orders =
                    filtersState.filteredOrders(state.orders);

                if (orders.isEmpty) return const EmptyPage(height: 500);

                return ListView.separated(
                  itemCount: orders.length,
                  itemBuilder: (context, index) {
                    final Order order = orders[index];

                    return Padding(
                      padding: Pad(
                        bottom: index == orders.length - 1 ? 20 : 0,
                      ),
                      child: _Tile(order),
                    );
                  },
                  separatorBuilder: (context, index) => const Gap(5),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
