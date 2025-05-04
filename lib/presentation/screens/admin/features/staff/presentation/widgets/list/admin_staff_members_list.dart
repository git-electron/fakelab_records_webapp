import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_staff_bloc/admin_staff_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/domain/bloc/admin_staff_filters_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/domain/models/staff_member.dart';
import 'package:fakelab_records_webapp/presentation/ui/pages/empty_page.dart';
import 'package:fakelab_records_webapp/presentation/ui/pages/error_page.dart';
import 'package:fakelab_records_webapp/presentation/ui/pages/loading_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import 'admin_staff_member_tile.dart';

class AdminStaffMembersList extends StatelessWidget {
  const AdminStaffMembersList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const Pad(horizontal: 20),
      child: BlocBuilder<AdminStaffBloc, AdminStaffState>(
        builder: (context, state) {
          return BlocBuilder<AdminStaffFiltersBloc, AdminStaffFiltersState>(
            builder: (context, filtersState) {
              if (state.isLoading) return const LoadingPage(height: 500);
              if (state.hasError) {
                return ErrorPage(message: state.message, height: 500);
              }

              final List<StaffMember> staffMembers =
                  filtersState.filteredStaffMembers(state.staffMembers);

              if (staffMembers.isEmpty) return const EmptyPage(height: 500);

              return ListView.separated(
                itemCount: staffMembers.length + 1,
                itemBuilder: (context, index) {
                  if (index == staffMembers.length) return const Gap(20);

                  final StaffMember staffMember = staffMembers[index];

                  return AdminStaffMemberTile(staffMember);
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
