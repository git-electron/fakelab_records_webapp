part of '../admin_clients_screen.dart';

class _List extends StatelessWidget {
  const _List();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const Pad(horizontal: 20),
        child: BlocBuilder<AdminClientsBloc, AdminClientsState>(
          builder: (context, state) {
            return BlocBuilder<AdminClientsFiltersBloc,
                AdminClientsFiltersState>(
              builder: (context, filtersState) {
                if (state.isLoading) return const LoadingPage(height: 500);
                if (state.hasError) {
                  return ErrorPage(message: state.message, height: 500);
                }

                final List<User> clients =
                    filtersState.filteredClients(state.clients);

                if (clients.isEmpty) return const EmptyPage(height: 500);

                return ListView.separated(
                  itemCount: clients.length,
                  itemBuilder: (context, index) {
                    final User client = clients[index];

                    return Padding(
                      padding: Pad(
                        bottom: index == clients.length - 1 ? 20 : 0,
                      ),
                      child: _Tile(client),
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
