import 'package:fakelab_records_webapp/core/di/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../domain/bloc/admin_clients_filters_bloc.dart';
import 'widgets/admin_clients_filters.dart';
import 'widgets/list/admin_client_list.dart';

class AdminClientsScreen extends StatelessWidget {
  const AdminClientsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => $<AdminClientsFiltersBloc>(),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AdminClientsFilters(),
          Gap(20),
          AdminClientsList(),
          Gap(100),
        ],
      ),
    );
  }
}
