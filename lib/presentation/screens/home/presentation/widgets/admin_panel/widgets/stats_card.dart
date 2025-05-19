part of '../../../home_screen.dart';

class _AdminStats extends StatelessWidget {
  const _AdminStats.card(this.item);

  final AdminStatsItem item;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Opacity(
        opacity: item.isEnabled ? 1 : .25,
        child: Container(
          padding: const Pad(all: 20),
          decoration: ShapeDecoration(
            color: context.colors.background,
            shape: BorderRadius.circular(20).smoothShape(),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(item.title, style: context.styles.footer2),
              const Gap(5),
              Text(
                (item.value ?? 0).toString(),
                style: context.styles.title3.copyWith(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
