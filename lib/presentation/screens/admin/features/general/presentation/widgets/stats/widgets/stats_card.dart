part of '../../../admin_general_screen.dart';

class _AdminStats extends StatelessWidget {
  const _AdminStats.card(this.item);

  final AdminStatsItem item;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Expanded(
      child: Opacity(
        opacity: item.isEnabled ? 1 : .25,
        child: Container(
          padding: Pad(all: isMobile ? 20 : 25),
          decoration: ShapeDecoration(
            color: context.colors.card,
            shape: BorderRadius.circular(20).smoothShape(),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                item.title,
                style:
                    isMobile ? context.styles.footer2 : context.styles.footer1,
              ),
              const Gap(5),
              Text(
                (item.value ?? 0).toString(),
                style: context.styles.title3.copyWith(
                  fontSize: isMobile ? 20 : 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
