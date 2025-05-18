part of '../../../../../admin_clients_screen.dart';

class _ClientInfo extends StatelessWidget {
  const _ClientInfo(this.client);

  final User client;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            client.fullName,
            style: _body(context, isMobile: isMobile),
          ),
          if (client.username.isNotNullAndEmpty)
            Text(
              '@${client.username}',
              style: _footer(context, isMobile: isMobile),
            ),
        ],
      ),
    );
  }

  TextStyle _body(BuildContext context, {required bool isMobile}) =>
      isMobile ? context.styles.body3 : context.styles.body1;

  TextStyle _footer(BuildContext context, {required bool isMobile}) =>
      isMobile ? context.styles.footer2 : context.styles.footer1;
}
