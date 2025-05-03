import 'package:fakelab_records_webapp/core/constants/constants.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_bloc/admin_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/models/admin_tab.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/general/admin_general_screen.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/orders/presentation/admin_orders_screen.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/presentation/admin_staff_screen.dart';
import 'package:fakelab_records_webapp/presentation/ui/pages/in_development_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminScreenContent extends StatelessWidget {
  const AdminScreenContent({super.key});

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
