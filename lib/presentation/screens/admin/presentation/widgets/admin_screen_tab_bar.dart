import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/constants/constants.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/models/admin_tab.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/tappable.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class AdminScreenTabBar extends StatelessWidget {
  const AdminScreenTabBar({super.key});

  static final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final AdminBloc bloc = context.read();

    return BlocBuilder<AdminBloc, AdminState>(
      builder: (context, state) {
        const List<AdminTab> tabs = AdminTab.values;

        return SizedBox(
          height: 40,
          child: ListView.separated(
            itemCount: tabs.length,
            controller: controller,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final AdminTab tab = tabs[index];
              final bool isSelected = state.isSelected(tab);

              return Padding(
                padding: Pad(
                  left: index == 0 ? 20 : 0,
                  right: index == tabs.length - 1 ? 20 : 0,
                ),
                child: Tappable(
                  onTap: () {
                    bloc.add(AdminEvent.tabChabged(tab));
                    controller.animateTo(
                      70.0 * index,
                      duration: kAnimationDuration,
                      curve: kAnimationCurve,
                    );
                  },
                  child: Container(
                    padding: const Pad(horizontal: 20, vertical: 8),
                    decoration: ShapeDecoration(
                      color: isSelected
                          ? context.colors.onBackground
                          : context.colors.card,
                      shape: SmoothRectangleBorder(
                        borderRadius: SmoothBorderRadius(
                          cornerRadius: 10,
                          cornerSmoothing: 0.6,
                        ),
                      ),
                    ),
                    child: Text(
                      tab.title,
                      style: context.styles.body1.copyWith(
                        color: isSelected ? context.colors.background : null,
                      ),
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => const Gap(10),
          ),
        );
      },
    );
  }
}
