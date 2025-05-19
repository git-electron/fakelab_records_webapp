part of '../home_screen.dart';

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.background,
      padding: const Pad(horizontal: 20),
      child: TelegramUserWrapper(builder: (context, user) {
        return Text.rich(
          TextSpan(
            children: [
              const TextSpan(text: 'Привет, '),
              TextSpan(
                text: '${user.firstName}!',
                style: context.styles.subtitle1.copyWith(
                  color: context.colors.title,
                ),
              ),
            ],
          ),
          style: context.styles.subtitle1,
        );
      }),
    );
  }
}
