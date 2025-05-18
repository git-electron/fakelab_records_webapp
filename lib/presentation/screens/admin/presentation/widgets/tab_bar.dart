part of '../admin_screen.dart';

class AdminScreenTabBar extends StatelessWidget {
  const AdminScreenTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    final AdminBloc bloc = context.read();

    return BlocBuilder<AdminBloc, AdminState>(
      builder: (context, state) {
        const List<AdminTab> tabs = AdminTab.values;

        return Container(
          height: 60,
          constraints: const BoxConstraints(maxWidth: 1500),
          alignment: Alignment.center,
          child: SizedBox(
            height: 40,
            child: ListView.separated(
              itemCount: tabs.length,
              controller: bloc.tabsController,
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
                      bloc.tabsController.animateTo(
                        bloc.tabsController.position.maxScrollExtent /
                            (tabs.length - 1) *
                            index,
                        duration: kAnimationDuration,
                        curve: kAnimationCurve,
                      );
                    },
                    child: Container(
                      padding: const Pad(horizontal: 20, vertical: 8),
                      decoration: ShapeDecoration(
                        color: isSelected
                            ? context.colors.onBackground
                            : context.colors.onBackground.copyWithOpacity(.05),
                        shape: BorderRadius.circular(10).smoothShape(),
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
          ),
        );
      },
    );
  }
}
