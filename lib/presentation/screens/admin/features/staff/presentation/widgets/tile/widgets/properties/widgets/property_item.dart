part of '../../../../../admin_staff_screen.dart';

enum _PropertyItemType { activity, service }

class _PropertyItem extends StatelessWidget {
  const _PropertyItem.activity(this.activity)
      : type = _PropertyItemType.activity,
        service = null;

  const _PropertyItem.service(this.service)
      : type = _PropertyItemType.service,
        activity = null;

  final _PropertyItemType type;
  final StaffActivity? activity;
  final StaffServiceType? service;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Container(
      padding: Pad(
        vertical: isMobile ? 5 : 8,
        horizontal: isMobile ? 10 : 16,
      ),
      decoration: ShapeDecoration(
        color: switch (type) {
          _PropertyItemType.activity => context.colors.background,
          _PropertyItemType.service => context.colors.onBackground,
        },
        shape: BorderRadius.circular(8).smoothShape(),
      ),
      child: Text(
        switch (type) {
          _PropertyItemType.activity => activity!.title,
          _PropertyItemType.service => service!.title,
        },
        style: context.styles.footer1.copyWith(
          color: switch (type) {
            _PropertyItemType.activity => context.colors.onBackground,
            _PropertyItemType.service => context.colors.background,
          },
        ),
      ),
    );
  }
}
