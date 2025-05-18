part of '../../../home_screen.dart';

class _AdminPanelHeader extends StatelessWidget {
  const _AdminPanelHeader();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdminPanelBloc, AdminPanelState>(
      buildWhen: (previous, _) => previous.isCollapsed,
      builder: (context, state) {
        return SizedBox(
          height: 25,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Assets.icons.logo.records.admin.svg(height: 20),
              if (state.isCollapsed)
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Assets.icons.eyeClosed.gray.svg(),
                    const Gap(10),
                    Text(
                      'Скрыто для\nэкономии трафика',
                      style: context.styles.footer3,
                    ),
                  ],
                ),
            ],
          ),
        );
      },
    );
  }
}
