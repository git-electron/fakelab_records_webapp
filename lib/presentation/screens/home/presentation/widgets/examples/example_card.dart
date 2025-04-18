import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/constants/constants.dart';
import 'package:fakelab_records_webapp/core/extensions/duration_extensions.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/home/domain/bloc/audio_player_bloc/audio_player_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/home/domain/models/example_genre.dart';
import 'package:fakelab_records_webapp/presentation/screens/home/domain/models/example_service_type.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/tappable.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class ExampleCard extends StatelessWidget {
  const ExampleCard({
    required this.filePath,
    required this.title,
    required this.artists,
    required this.services,
    required this.genres,
    super.key,
  });

  final String filePath;
  final String title;
  final List<String> artists;
  final List<ExampleGenre> genres;
  final List<ExampleServiceType> services;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AudioPlayer(
          filePath: filePath,
          title: title,
          artists: artists,
        ),
        const Gap(10),
        Wrap(
          children: [
            ..._genres(context),
            ..._services(context),
          ],
        ),
      ],
    );
  }

  List<Widget> _genres(BuildContext context) => genres.map((genre) {
        return Container(
          padding: const Pad(vertical: 5, horizontal: 10),
          margin: const Pad(right: 5, bottom: 5),
          decoration: ShapeDecoration(
            color: context.colors.shadowColor,
            shape: SmoothRectangleBorder(
              borderRadius: SmoothBorderRadius(
                cornerRadius: 8,
                cornerSmoothing: 0.6,
              ),
            ),
          ),
          child: Text(
            genre.title,
            style: context.styles.footer1.copyWith(
              color: context.colors.onBackground,
            ),
          ),
        );
      }).toList();

  List<Widget> _services(BuildContext context) => services.map((service) {
        return Container(
          padding: const Pad(vertical: 5, horizontal: 10),
          margin: const Pad(right: 5, bottom: 5),
          decoration: ShapeDecoration(
            color: context.colors.onBackground,
            shape: SmoothRectangleBorder(
              borderRadius: SmoothBorderRadius(
                cornerRadius: 8,
                cornerSmoothing: 0.6,
              ),
            ),
          ),
          child: Text(
            service.title,
            style: context.styles.footer1.copyWith(
              color: context.colors.background,
            ),
          ),
        );
      }).toList();
}

class AudioPlayer extends StatelessWidget {
  const AudioPlayer({
    required this.filePath,
    required this.title,
    required this.artists,
    super.key,
  });

  final String filePath;
  final String title;
  final List<String> artists;

  @override
  Widget build(BuildContext context) {
    final AudioPlayerBloc bloc = context.read();

    return Container(
      padding: const Pad(all: 20),
      decoration: ShapeDecoration(
        color: context.colors.shadowColor,
        shape: SmoothRectangleBorder(
          borderRadius: SmoothBorderRadius(
            cornerRadius: 20,
            cornerSmoothing: 0.6,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Tappable(
            onTap: () => bloc.add(AudioPlayerEvent.playButtonPressed(filePath)),
            child: BlocBuilder<AudioPlayerBloc, AudioPlayerState>(
              builder: (context, state) {
                return Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: context.colors.onBackground,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: state.isFileLoading(filePath)
                      ? SizedBox.square(
                          dimension: 15,
                          child: CircularProgressIndicator(
                            color: context.colors.background,
                            strokeCap: StrokeCap.round,
                            strokeWidth: 3,
                          ),
                        )
                      : Icon(
                          state.isFilePlaying(filePath)
                              ? Icons.pause_rounded
                              : Icons.play_arrow_rounded,
                          size: state.isFilePlaying(filePath) ? 25 : 30,
                          color: context.colors.background,
                        ),
                );
              },
            ),
          ),
          const Gap(15),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const Pad(horizontal: 5),
                  child: Text(
                    title,
                    style: context.styles.title3.copyWith(fontSize: 16),
                  ),
                ),
                Container(
                  height: 20,
                  alignment: Alignment.bottomLeft,
                  child: BlocBuilder<AudioPlayerBloc, AudioPlayerState>(
                    builder: (context, state) {
                      if (state.isFileSelected(filePath) && bloc.currentDurationInMs != 0) {
                        return StreamBuilder<Duration>(
                          stream: bloc.audioPlayer.currentPosition,
                          builder: (context, snapshot) {
                            final Duration currentPosition = snapshot.hasData
                                ? snapshot.data!
                                : const Duration();

                            return AudioProgressBar(
                              state: state,
                              currentPosition: currentPosition,
                            );
                          },
                        );
                      }

                      return Padding(
                        padding: const Pad(horizontal: 5),
                        child: Text(
                          artists.join(', '),
                          style: context.styles.footer1,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AudioProgressBar extends StatelessWidget {
  const AudioProgressBar({
    required this.state,
    required this.currentPosition,
    super.key,
  });

  final AudioPlayerState state;
  final Duration currentPosition;

  @override
  Widget build(BuildContext context) {
    final AudioPlayerBloc bloc = context.read();

    final String current = state.isSeekInProgress
        ? Duration(milliseconds: state.seekProgressValue.round()).toMMss()
        : currentPosition.toMMss();
    final String total = bloc.totalDuration.toMMss();

    return Row(
      children: [
        Expanded(
          child: Slider(
            value: state.isSeekInProgress
                ? state.seekProgressValue
                : bloc.currentDurationInMs,
            max: bloc.totalDurationInMs,
            onChanged: (value) => bloc.add(
              AudioPlayerEvent.seek(value),
            ),
            onChangeStart: (value) => bloc.add(
              const AudioPlayerEvent.seekStart(),
            ),
            onChangeEnd: (value) => bloc.add(
              AudioPlayerEvent.seekEnd(
                Duration(
                  milliseconds: value.round(),
                ),
              ),
            ),
          ),
        ),
        const Gap(5),
        Container(
          width: 60,
          alignment: Alignment.centerRight,
          child: AnimatedOpacity(
            duration: kAnimationDuration,
            curve: kAnimationCurve,
            opacity: bloc.totalDurationInMs != 0 ? 1 : 0,
            child: Text(
              '$current / $total',
              style: context.styles.footer2,
            ),
          ),
        ),
      ],
    );
  }
}
