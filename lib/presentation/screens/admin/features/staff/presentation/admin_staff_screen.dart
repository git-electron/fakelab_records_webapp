import 'package:fakelab_records_webapp/core/di/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../domain/bloc/admin_staff_filters_bloc.dart';
import 'widgets/admin_staff_filters.dart';
import 'widgets/list/admin_staff_members_list.dart';

class AdminStaffScreen extends StatelessWidget {
  const AdminStaffScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => $<AdminStaffFiltersBloc>(),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AdminStaffFilters(),
          Gap(20),
          AdminStaffMembersList(),
          Gap(100),
        ],
      ),
    );
  }
}
