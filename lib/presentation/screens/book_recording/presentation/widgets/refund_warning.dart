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
        spacing: 20,
        children: [
          Assets.icons.bang.light.svg(),
          const Expanded(child: Text(_warningText)),
        ],
      ),
    );
  }

  static const String _warningText =
      'При отмене бронирования менее чем за 24 часа предоплата не возвращается';
}
