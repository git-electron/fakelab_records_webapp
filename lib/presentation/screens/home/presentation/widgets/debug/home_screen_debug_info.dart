import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/domain/bloc/user_bloc/user_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/home/domain/bloc/home_bloc/home_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/theme/theme_extensions.dart';
import '../../../../../ui/wrappers/tappable.dart';
import '../../../../../ui/wrappers/telegram/telegram_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreenDebugInfo extends StatefulWidget {
  const HomeScreenDebugInfo({super.key});

  @override
  State<HomeScreenDebugInfo> createState() => _HomeScreenDebugInfoState();
}

class _HomeScreenDebugInfoState extends State<HomeScreenDebugInfo> {
  bool _isHidden = false;

  @override
  Widget build(BuildContext context) {
    final bool shouldDisplayInfo = kDebugMode && !_isHidden;
    if (!shouldDisplayInfo) return const SizedBox();

    return Padding(
      padding: const Pad(horizontal: 20, bottom: 20),
      child: TelegramWrapper(builder: (context, data) {
        return Container(
          width: double.infinity,
          padding: const Pad(all: 20),
          color: context.colors.card,
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
      }),
    );
  }
}
