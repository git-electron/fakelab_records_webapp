part of '../admin_staff_screen.dart';

class _List extends StatelessWidget {
  const _List();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
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
                  itemCount: staffMembers.length,
                  itemBuilder: (context, index) {
                    final StaffMember staffMember = staffMembers[index];

                    return Padding(
                      padding: Pad(
                        bottom: index == staffMembers.length - 1 ? 20 : 0,
                      ),
                      child: _Tile(staffMember),
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
