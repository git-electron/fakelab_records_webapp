import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/domain/models/user/user.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_clients_bloc/admin_clients_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/clients/domain/bloc/admin_clients_filters_bloc.dart';
import 'package:fakelab_records_webapp/presentation/ui/pages/empty_page.dart';
import 'package:fakelab_records_webapp/presentation/ui/pages/error_page.dart';
import 'package:fakelab_records_webapp/presentation/ui/pages/loading_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import 'admin_client_member_tile.dart';

class AdminClientsList extends StatelessWidget {
  const AdminClientsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const Pad(horizontal: 20),
      child: BlocBuilder<AdminClientsBloc, AdminClientsState>(
        builder: (context, state) {
          return BlocBuilder<AdminClientsFiltersBloc, AdminClientsFiltersState>(
            builder: (context, filtersState) {
              if (state.isLoading) return const LoadingPage(height: 500);
              if (state.hasError) {
                return ErrorPage(message: state.message, height: 500);
              }

              final List<User> clients =
                  filtersState.filteredClients(state.clients);

              if (clients.isEmpty) return const EmptyPage(height: 500);

              return ListView.separated(
                clipBehavior: Clip.none,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: clients.length,
                itemBuilder: (context, index) {
                  final User client = clients[index];

                  return AdminClientMemberTile(client);
                },
                separatorBuilder: (context, index) => const Gap(5),
              );
            },
          );
        },
      ),
    );
  }
}
