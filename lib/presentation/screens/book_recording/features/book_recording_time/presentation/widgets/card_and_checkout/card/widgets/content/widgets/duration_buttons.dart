part of '../../../../../../book_recording_time_screen.dart';

class _DurationButtons extends StatelessWidget {
  const _DurationButtons();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookRecordingTimeBloc, BookRecordingTimeState>(
      builder: (context, state) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _DurationButton.minus(state),
            Container(
              width: 32.5,
              alignment: Alignment.center,
              child: Text(
                _duration(state.selectedDuration),
                style: context.styles.footer1,
              ),
            ),
            _DurationButton.plus(state),
          ],
        );
      },
    );
  }

  String _duration(Duration duration) => duration.toHHplural(
        withMinutes: false,
        isCompact: true,
      );
}

enum _DurationButtonType { plus, minus }

class _DurationButton extends StatelessWidget {
  const _DurationButton.plus(this.state) : type = _DurationButtonType.plus;

  const _DurationButton.minus(this.state) : type = _DurationButtonType.minus;

  final _DurationButtonType type;
  final BookRecordingTimeState state;

  @override
  Widget build(BuildContext context) {
    final bool isEnabled = switch (type) {
      _DurationButtonType.plus => state.canBeGreater,
      _DurationButtonType.minus => state.canBeLower,
    };

    return Opacity(
      opacity: isEnabled ? 1 : .25,
      child: Tappable(
        onTap: isEnabled ? () => _onTap(context, state: state) : null,
        child: Container(
          height: 27.5,
          width: 27.5,
          padding: const Pad(all: 5),
          decoration: ShapeDecoration(
            color: _color(context),
            shape: BorderRadius.circular(10).smoothShape(),
          ),
          alignment: Alignment.center,
          child: _icon.svg(),
        ),
      ),
    );
  }

  void _onTap(
    BuildContext context, {
    required BookRecordingTimeState state,
  }) {
    final BookRecordingTimeBloc bloc = context.read();

    final Duration duration = switch (type) {
      _DurationButtonType.plus => state.selectedDuration + state.kHourDuration,
      _DurationButtonType.minus => state.selectedDuration - state.kHourDuration,
    };

    bloc.add(BookRecordingTimeEvent.durationSelected(duration));
  }

  Color _color(BuildContext context) => switch (type) {
        _DurationButtonType.plus => context.colors.onBackground,
        _DurationButtonType.minus => context.colors.background,
      };

  SvgGenImage get _icon => switch (type) {
        _DurationButtonType.plus => Assets.icons.plus.dark,
        _DurationButtonType.minus => Assets.icons.minus.light,
      };
}
