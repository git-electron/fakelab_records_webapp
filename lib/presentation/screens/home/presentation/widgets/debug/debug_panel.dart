part of '../../home_screen.dart';

class _DebugPanel extends StatefulWidget {
  const _DebugPanel();

  @override
  State<_DebugPanel> createState() => _DebugPanelState();
}

class _DebugPanelState extends State<_DebugPanel> {
  bool _isHidden = false;

  @override
  Widget build(BuildContext context) {
    final bool shouldDisplayInfo = isDevelopment && !_isHidden;
    if (!shouldDisplayInfo) return const SizedBox();

    return TelegramWrapper(builder: (context, data) {
      return Container(
        width: double.maxFinite,
        color: context.colors.card,
        padding: const Pad(all: 20),
        margin: const Pad(horizontal: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Debug info',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Tappable(
                  onTap: () => setState(() {
                    _isHidden = true;
                  }),
                  child: Text(
                    'Hide',
                    style: TextStyle(color: context.colors.footer),
                  ),
                ),
              ],
            ),
            const Gap(15),
            Text(data.user.toString()),
            const Gap(10),
            Text(data.meta.toString()),
            const Gap(15),
            const Text(
              'Launch params',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Gap(10),
            Text('''
    - Force fullscreen: ${data.meta.isMobile}
    - Vertical swipes enabled: false'''),
            const Gap(15),
            const Text(
              'User state',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Gap(10),
            BlocBuilder<UserBloc, UserState>(
              builder: (context, state) {
                return Text('''
    ${state.toString()}
    - Is admin: ${state.user?.isAdmin}''');
              },
            ),
            const Gap(15),
            const Text(
              'Home state',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Gap(10),
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return Text('''
    - Is loading: ${state.isLoading}
    - Has error: ${state.hasError}''');
              },
            ),
          ],
        ),
      );
    });
  }
}
