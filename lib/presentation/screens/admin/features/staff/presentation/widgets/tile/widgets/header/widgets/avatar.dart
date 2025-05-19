part of '../../../../../admin_staff_screen.dart';

class _Avatar extends StatelessWidget {
  const _Avatar(this.photoUrl);

  final String? photoUrl;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    if (!photoUrl.isNotNullAndEmpty) return const SizedBox();

    return Padding(
      padding: const Pad(right: 10),
      child: Avatar(
        size: isMobile ? 40 : 50,
        photoUrl: photoUrl!,
      ),
    );
  }
}
