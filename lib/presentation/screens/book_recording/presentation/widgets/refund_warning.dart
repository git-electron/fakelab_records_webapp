part of '../book_recording_screen.dart';

class _RefundWarning extends StatelessWidget {
  const _RefundWarning();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const Pad(all: 20),
      margin: const Pad(horizontal: 20),
      decoration: ShapeDecoration(
        color: context.colors.card,
        shape: BorderRadius.circular(20).smoothShape(),
      ),
      child: Row(
        spacing: 10,
        children: [
          Assets.icons.bang.light.svg(),
          Expanded(
            child: Text(
              _warningText,
              style: context.styles.footer2.copyWith(
                color: context.colors.body,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static const String _warningText =
      'При отмене бронирования менее чем за 24 часа предоплата не возвращается';
}
