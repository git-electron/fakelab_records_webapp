import 'package:fakelab_records_webapp/core/di/injector.dart';
import 'package:fakelab_records_webapp/presentation/screens/home/domain/bloc/audio_player_bloc/audio_player_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/home/domain/models/example_genre.dart';
import 'package:fakelab_records_webapp/presentation/screens/home/domain/models/example_service_type.dart';
import 'package:fakelab_records_webapp/presentation/screens/home/presentation/widgets/examples/example_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class ExamplesList extends StatelessWidget {
  const ExamplesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => $<AudioPlayerBloc>(),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ExampleCard(
          //   fileName: 'tuff',
          //   title: 'TUFF',
          //   artists: ['kontree', 'raimee'],
          //   services: ExampleServiceType.values,
          //   genres: [ExampleGenre.HIP_HOP, ExampleGenre.AMBIENT],
          // ),
          // Gap(20), //TODO: вставить после 25 апреля
          ExampleCard(
            fileName: 'brave',
            title: 'brave',
            artists: ['raimee', 'rockstarchild', 'KXSRILLO'],
            services: ExampleServiceType.values,
            genres: [
              ExampleGenre.HIP_HOP,
              ExampleGenre.EDM,
              ExampleGenre.AMBIENT,
            ],
          ),
          Gap(20),
          ExampleCard(
            fileName: 'inmyneon',
            title: 'in my neon',
            artists: ['rockstarchild'],
            services: ExampleServiceType.values,
            genres: [ExampleGenre.POP, ExampleGenre.EDM],
          ),
          Gap(20),
          ExampleCard(
            fileName: 'damn',
            title: 'Могу убить за своих',
            artists: ['Horin', 'nimflore'],
            services: [
              ExampleServiceType.RECORDING,
              ExampleServiceType.MIX,
              ExampleServiceType.MASTERING,
            ],
            genres: [ExampleGenre.HIP_HOP],
          ),
          Gap(20),
          ExampleCard(
            fileName: 'cats',
            title: 'Молодой предприниматель',
            artists: ['Horin'],
            services: [
              ExampleServiceType.RECORDING,
              ExampleServiceType.MIX,
              ExampleServiceType.MASTERING,
            ],
            genres: [ExampleGenre.HIP_HOP],
          ),
          Gap(20),
          // ExampleCard(
          //   fileName: 'today',
          //   title: 'Здесь и сейчас',
          //   artists: ['Четверг'],
          //   services: [
          //     ExampleServiceType.RECORDING,
          //     ExampleServiceType.MIX,
          //     ExampleServiceType.MASTERING,
          //   ],
          // genres: [ExampleGenre.HIP_HOP],
          // ),
          // Gap(20), //TODO: вставить после 9 мая
          ExampleCard(
            fileName: 'tired',
            title: 'Заебали ***',
            artists: ['raimee'],
            services: [
              ExampleServiceType.RECORDING,
              ExampleServiceType.MIX,
              ExampleServiceType.MASTERING,
            ],
            genres: [ExampleGenre.ROCK, ExampleGenre.POP],
          ),
        ],
      ),
    );
  }
}
