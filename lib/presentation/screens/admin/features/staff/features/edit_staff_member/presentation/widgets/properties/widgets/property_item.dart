part of '../../../admin_edit_staff_member_screen.dart';

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

    return BlocBuilder<AdminEditStaffMemberBloc, AdminEditStaffMemberState>(
      builder: (context, state) {
        return Tappable(
          onTap: () => _onTap(context),
          child: Container(
            padding: Pad(
              vertical: isMobile ? 6 : 8,
              horizontal: isMobile ? 12 : 16,
            ),
            decoration: ShapeDecoration(
              color: _backgroundColor(context, state: state),
              shape: BorderRadius.circular(8).smoothShape(),
            ),
            child: Text(
              _title,
              style: context.styles.footer1.copyWith(
                color: _textColor(context, state: state),
              ),
            ),
          ),
        );
      },
    );
  }

  void _onTap(BuildContext context) {
    final AdminEditStaffMemberBloc bloc = context.read();

    bloc.add(switch (type) {
      _PropertyItemType.activity =>
        AdminEditStaffMemberEvent.activitySelected(activity!),
      _PropertyItemType.service =>
        AdminEditStaffMemberEvent.serviceSelected(service!),
    });
  }

  String get _title => switch (type) {
        _PropertyItemType.activity => activity!.title,
        _PropertyItemType.service => service!.title,
      };

  Color _backgroundColor(
    BuildContext context, {
    required AdminEditStaffMemberState state,
  }) {
    final bool isSelected = switch (type) {
      _PropertyItemType.activity => state.isActivitySelected(activity!),
      _PropertyItemType.service => state.isServiceSelected(service!),
    };
    return isSelected ? context.colors.onBackground : context.colors.card;
  }

  Color _textColor(
    BuildContext context, {
    required AdminEditStaffMemberState state,
  }) {
    final bool isSelected = switch (type) {
      _PropertyItemType.activity => state.isActivitySelected(activity!),
      _PropertyItemType.service => state.isServiceSelected(service!),
    };
    return isSelected ? context.colors.background : context.colors.onBackground;
  }
}
