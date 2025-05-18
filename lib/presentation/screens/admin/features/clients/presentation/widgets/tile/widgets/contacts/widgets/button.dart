part of '../../../../../admin_clients_screen.dart';

enum _ButtonType { copy, call }

class _Button extends StatelessWidget {
  const _Button.copy(this.text) : type = _ButtonType.copy;
  const _Button.call(this.text) : type = _ButtonType.call;

  final String text;
  final _ButtonType type;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Tappable(
      onTap: () => _onTap(context),
      child: Container(
        padding: Pad(
          vertical: isMobile ? 3 : 4,
          horizontal: isMobile ? 8 : 10,
        ),
        alignment: Alignment.center,
        decoration: ShapeDecoration(
          color: context.colors.onBackground.copyWithOpacity(.1),
          shape: BorderRadius.circular(isMobile ? 5 : 10).smoothShape(),
        ),
        child: Text(
          switch (type) {
            _ButtonType.copy => 'Скопировать',
            _ButtonType.call => 'Позвонить',
          },
          style: context.styles.body3.copyWith(
            fontSize: isMobile ? 10 : null,
            color: context.colors.onBackground,
          ),
        ),
      ),
    );
  }

  void _onTap(BuildContext context) {
    return switch (type) {
      _ButtonType.copy => _copyText(context),
      _ButtonType.call => _callNumber(),
    };
  }

  void _copyText(BuildContext context) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Скопировано')),
    );
  }

  void _callNumber() {
    launchUrlString('tel:+${text.extractNumerals()}');
  }
}
