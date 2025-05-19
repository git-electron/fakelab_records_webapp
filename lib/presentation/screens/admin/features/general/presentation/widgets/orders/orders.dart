part of '../../admin_general_screen.dart';

class _Orders extends StatelessWidget {
  const _Orders();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;
    final bool isFillingScreen = size.width < 1500;

    return BlocBuilder<AdminOrdersBloc, AdminOrdersState>(
      builder: (context, state) {
        if (state.isLoading) return LoadingPage(height: isMobile ? 120 : 140);
        if (state.hasError) {
          return ErrorPage(message: state.message, height: 300);
        }
        if (!state.hasOrders) return const EmptyPage(height: 300);

        final List<Order> orders = state.orders!;

        return Container(
          padding: const Pad(bottom: 20),
          margin: isFillingScreen ? null : const Pad(horizontal: 20),
          clipBehavior: isFillingScreen ? Clip.none : Clip.antiAlias,
          decoration: BoxDecoration(color: context.colors.background),
          child: SizedBox(
            height: isMobile ? 120 : 140,
            child: ListView.separated(
              itemCount: orders.length + 1,
              scrollDirection: Axis.horizontal,
              clipBehavior: Clip.none,
              physics: const SnapBounceScrollPhysics(itemWidth: 210),
              separatorBuilder: (context, index) => const Gap(10),
              itemBuilder: (context, index) => Padding(
                padding: Pad(
                  left: index == 0 && isFillingScreen ? 20 : 0,
                  right: index == orders.length && isFillingScreen ? 20 : 0,
                ),
                child: index == orders.length
                    ? const _AllOrdersButton()
                    : _OrderCard(orders[index]),
              ),
            ),
          ),
        );
      },
    );
  }
}

