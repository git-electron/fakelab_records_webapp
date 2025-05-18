part of '../../../home_screen.dart';

class _LoyaltyHeader extends StatelessWidget {
  const _LoyaltyHeader();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 10,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Text(
          'Твои баллы',
          style: context.styles.subtitle3.copyWith(
            color: context.colors.title,
          ),
        ),
      ),
    );
  }
}
