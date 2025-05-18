part of '../../../../my_orders_feature.dart';

class _TitleSmall extends StatelessWidget {
  const _TitleSmall(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Text(
        title,
        style: context.styles.title3.copyWith(
          height: .85,
          color: context.colors.body,
        ),
      ),
    );
  }
}
