part of '../../../../../home_screen.dart';

enum _PropertyItemType { genre, service }

class _ExamplePropertyItem extends StatelessWidget {
  const _ExamplePropertyItem.genre(this.genre)
      : type = _PropertyItemType.genre,
        service = null;

  const _ExamplePropertyItem.service(this.service)
      : type = _PropertyItemType.service,
        genre = null;

  final _PropertyItemType type;
  final ExampleGenre? genre;
  final ExampleServiceType? service;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const Pad(vertical: 5, horizontal: 10),
      margin: const Pad(right: 5, bottom: 5),
      decoration: ShapeDecoration(
        color: switch (type) {
          _PropertyItemType.genre => context.colors.card,
          _PropertyItemType.service => context.colors.onBackground,
        },
        shape: BorderRadius.circular(8).smoothShape(),
      ),
      child: Text(
        switch (type) {
          _PropertyItemType.genre => genre!.title,
          _PropertyItemType.service => service!.title,
        },
        style: context.styles.footer1.copyWith(
          color: switch (type) {
            _PropertyItemType.genre => context.colors.onBackground,
            _PropertyItemType.service => context.colors.background,
          },
        ),
      ),
    );
  }
}
