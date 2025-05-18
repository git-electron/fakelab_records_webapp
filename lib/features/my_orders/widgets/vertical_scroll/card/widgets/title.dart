part of '../../../../my_orders_feature.dart';

class _Title extends StatelessWidget {
  const _Title(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: context.styles.title3.copyWith(
        fontSize: 25,
        height: .85,
        color: context.colors.body,
      ),
    );
  }
}
