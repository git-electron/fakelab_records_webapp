part of '../../../home_screen.dart';

class _ExamplesList extends StatelessWidget {
  const _ExamplesList();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => $<AudioPlayerBloc>(),
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _examples.map(_Example.card).toList(),
      ),
    );
  }

  List<Example> get _examples => [
        Example(
          filePath: Assets.audio.examples.tuff,
          title: 'TUFF',
          artists: const ['kontree', 'raimee'],
          services: ExampleServiceType.values,
          genres: const [ExampleGenre.HIP_HOP, ExampleGenre.AMBIENT],
        ),
        Example(
          filePath: Assets.audio.examples.brave,
          title: 'brave',
          artists: const ['raimee', 'rockstarchild', 'KXSRILLO'],
          services: ExampleServiceType.values,
          genres: const [
            ExampleGenre.HIP_HOP,
            ExampleGenre.EDM,
            ExampleGenre.AMBIENT,
          ],
        ),
        Example(
          filePath: Assets.audio.examples.inmyneon,
          title: 'in my neon',
          artists: const ['rockstarchild'],
          services: ExampleServiceType.values,
          genres: const [ExampleGenre.POP, ExampleGenre.EDM],
        ),
        Example(
          filePath: Assets.audio.examples.damn,
          title: 'Могу убить за своих',
          artists: const ['Horin', 'nimflore'],
          services: const [
            ExampleServiceType.RECORDING,
            ExampleServiceType.MIX,
            ExampleServiceType.MASTERING,
          ],
          genres: const [ExampleGenre.HIP_HOP],
        ),
        Example(
          filePath: Assets.audio.examples.cats,
          title: 'Молодой предприниматель',
          artists: const ['Horin'],
          services: const [
            ExampleServiceType.RECORDING,
            ExampleServiceType.MIX,
            ExampleServiceType.MASTERING,
          ],
          genres: const [ExampleGenre.HIP_HOP],
        ),
        Example(
          filePath: Assets.audio.examples.tired,
          title: 'Заебали ***',
          artists: const ['raimee'],
          services: const [
            ExampleServiceType.RECORDING,
            ExampleServiceType.MIX,
            ExampleServiceType.MASTERING,
          ],
          genres: const [ExampleGenre.ROCK, ExampleGenre.POP],
        ),
      ];
}
