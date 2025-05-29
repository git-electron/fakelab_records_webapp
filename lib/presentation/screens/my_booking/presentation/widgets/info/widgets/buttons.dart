part of '../../../my_booking_screen.dart';

class _Buttons extends StatelessWidget {
  const _Buttons();

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        AppButton.primary(
          text: 'Добавить в календарь',
          icon: Assets.icons.calendar.dark,
          onTap: () {},
        ),
        AppButton.secondary(
          text: 'Построить маршрут',
          icon: Assets.icons.pin.light,
          onTap: () => launchUrlString(yandexMapsUrl),
        ),
      ],
    );
  }
}
