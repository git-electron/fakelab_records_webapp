import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/clickable.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/telegram/telegram_wrapper.dart';
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
    final bool shouldDisplayInfo = !_isHidden; //TODO: add && kDebugMode
    if (!shouldDisplayInfo) return const SizedBox();

    return Padding(
      padding: const Pad(horizontal: 20, bottom: 20),
      child: TelegramWrapper(builder: (context, data) {
        return Container(
          width: double.infinity,
          padding: const Pad(all: 20),
          decoration: BoxDecoration(
            color: context.colors.shadowColor,
          ),
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
                  Clickable(
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
            ],
          ),
        );
      }),
    );
  }
}
