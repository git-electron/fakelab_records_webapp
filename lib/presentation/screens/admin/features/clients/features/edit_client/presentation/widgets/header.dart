part of '../admin_edit_client_screen.dart';

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      color: context.colors.background,
      child: Text(
        'Редактировать клиента',
        style: context.styles.subtitle1.copyWith(
          color: context.colors.title,
        ),
      ),
    );
  }
}
