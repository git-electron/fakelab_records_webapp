part of '../../home_screen.dart';

class _Examples extends StatelessWidget {
  const _Examples();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: Pad(horizontal: 20),
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ExamplesHeader(),
          _ExamplesList(),
          _ExamplesButton(),
        ],
      ),
    );
  }
}
