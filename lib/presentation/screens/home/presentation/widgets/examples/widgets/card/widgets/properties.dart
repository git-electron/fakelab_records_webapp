part of '../../../../../home_screen.dart';

class _ExampleProperties extends StatelessWidget {
  const _ExampleProperties(this.example);

  final Example example;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        ..._genres(context),
        ..._services(context),
      ],
    );
  }

  List<Widget> _genres(BuildContext context) =>
      example.genres.map(_ExamplePropertyItem.genre).toList();

  List<Widget> _services(BuildContext context) =>
      example.services.map(_ExamplePropertyItem.service).toList();
}
