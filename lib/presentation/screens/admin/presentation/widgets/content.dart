part of '../admin_screen.dart';

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdminBloc, AdminState>(
      builder: (context, state) {
        final AdminTab selectedTab = state.selectedTab;

        return AnimatedSwitcher(
          duration: kAnimationDuration,
          switchOutCurve: Curves.easeInExpo,
          layoutBuilder: _layoutBuilder,
          child: SizedBox(
            key: ValueKey(selectedTab),
            child: switch (selectedTab) {
              AdminTab.general => const AdminGeneralScreen(),
              AdminTab.clients => const AdminClientsScreen(),
              AdminTab.orders => const AdminOrdersScreen(),
              AdminTab.staff => const AdminStaffScreen(),
              _ => InDevelopmentPage(selectedTab.name, height: 500),
            },
          ),
        );
      },
    );
  }

  Widget _layoutBuilder(Widget? currentChild, List<Widget> previousChildren) {
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        ...previousChildren,
        if (currentChild != null) currentChild,
      ],
    );
  }
}
