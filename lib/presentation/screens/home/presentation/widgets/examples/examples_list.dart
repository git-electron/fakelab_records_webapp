import '../../../../../../core/di/injector.dart';
import '../../../../../../core/gen/assets.gen.dart';
import '../../../domain/bloc/audio_player_bloc/audio_player_bloc.dart';
import '../../../domain/models/example_genre.dart';
import '../../../domain/models/example_service_type.dart';
import 'example_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class ExamplesList extends StatelessWidget {
  const ExamplesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => $<AudioPlayerBloc>(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExampleCard(
            filePath: Assets.audio.examples.tuff,
            title: 'TUFF',
            artists: const ['kontree', 'raimee'],
            services: ExampleServiceType.values,
            genres: const [ExampleGenre.HIP_HOP, ExampleGenre.AMBIENT],
          ),
          const Gap(20),
          ExampleCard(
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
          const Gap(20),
          ExampleCard(
            filePath: Assets.audio.examples.inmyneon,
            title: 'in my neon',
            artists: const ['rockstarchild'],
            services: ExampleServiceType.values,
            genres: const [ExampleGenre.POP, ExampleGenre.EDM],
          ),
          const Gap(20),
          ExampleCard(
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
          const Gap(20),
          ExampleCard(
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
          const Gap(20),
          // ExampleCard(
          //   filePath: Assets.audio.examples.today,
          //   title: 'Здесь и сейчас',
          //   artists: const ['Четверг'],
          //   services: const [
          //     ExampleServiceType.RECORDING,
          //     ExampleServiceType.MIX,
          //     ExampleServiceType.MASTERING,
          //   ],
          //   genres: const [ExampleGenre.HIP_HOP],
          // ),
          // const Gap(20), //TODO: add after may 9
          ExampleCard(
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
        ],
      ),
    );
  }
}
