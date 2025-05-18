part of '../../../home_screen.dart';

class _AdminPanelButtons extends StatelessWidget {
  const _AdminPanelButtons();

  @override
  Widget build(BuildContext context) {
    final AdminPanelBloc bloc = context.read();

    return BlocBuilder<AdminPanelBloc, AdminPanelState>(
      buildWhen: (previous, _) => previous.isCollapsed,
      builder: (context, state) {
        if (state.isCollapsed) {
          return Column(
            spacing: 10,
            children: [
              AppButton.primary(
                text: 'Показать данные',
                icon: Assets.icons.eye.dark,
                onTap: () => bloc.add(const AdminPanelEvent.setExpanded()),
              ),
              AppButton.secondary(
                text: 'В админку',
                icon: Assets.icons.arrowRight.light,
                onTap: () => context.pushRoute(const AdminRoute()),
              ),
            ],
          );
        }

        return AppButton.primary(
          text: 'В админку',
          icon: Assets.icons.arrowRight.dark,
          onTap: () => context.pushRoute(const AdminRoute()),
        );
      },
    );
  }
}
