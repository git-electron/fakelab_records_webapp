part of '../home_screen.dart';

class _ActionButtons extends StatelessWidget {
  const _ActionButtons();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const Pad(horizontal: 20),
      child: Column(
        children: [
          AppButton.primary(
            onTap: () => context.pushRoute(const BookRecordingDateRoute()),
            text: 'Забронировать запись',
            icon: Assets.icons.calendar.dark,
          ),
          const Gap(10),
          AppButton.secondary(
            onTap: () {},
            isEnabled: false,
            text: 'Заказать услугу',
            icon: Assets.icons.cart.light,
          ),
        ],
      ),
    );
  }
}
