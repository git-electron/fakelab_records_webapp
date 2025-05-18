part of '../../../../home_screen.dart';

class _Example extends StatelessWidget {
  const _Example.card(this.example);

  final Example example;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AudioPlayer(
          filePath: example.filePath,
          title: example.title,
          artists: example.artists,
        ),
        _ExampleProperties(example),
      ],
    );
  }
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
        color: context.colors.card,
        shape: BorderRadius.circular(20).smoothShape(),
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
                      if (state.isFileSelected(filePath) &&
                          bloc.currentDurationInMs != 0) {
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
