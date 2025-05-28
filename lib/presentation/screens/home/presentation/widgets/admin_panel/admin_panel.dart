part of '../../home_screen.dart';

class _AdminPanel extends StatelessWidget {
  const _AdminPanel();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        final bool shouldDisplayPanel = state.user?.isAdmin ?? false;
        if (!shouldDisplayPanel) return const SizedBox();

        return Container(
          width: double.maxFinite,
          padding: const Pad(all: 20),
          margin: const Pad(horizontal: 20, top: 20),
          decoration: ShapeDecoration(
            color: context.colors.card,
            shape: BorderRadius.circular(20).smoothShape(),
          ),
          child: const Column(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _AdminPanelHeader(),
              _AdminPanelContent(),
              _AdminPanelButtons(),
            ],
          ),
        );
      },
    );
  }
}
