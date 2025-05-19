part of '../../../admin_orders_screen.dart';

class _DateRangeButton extends StatelessWidget {
  const _DateRangeButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdminOrdersFiltersBloc, AdminOrdersFiltersState>(
      builder: (context, state) {
        return Tappable(
          onTap: () => _onTap(context, state: state),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                height: 50,
                width: 60,
                alignment: Alignment.center,
                decoration: ShapeDecoration(
                  color: context.colors.card,
                  shape: BorderRadius.circular(15).smoothShape(),
                ),
                child: Assets.icons.calendar.light.svg(),
              ),
              if (state.dateRange != null)
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: context.colors.primary,
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 5,
                      color: context.colors.background,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  void _onTap(
    BuildContext context, {
    required AdminOrdersFiltersState state,
  }) async {
    final AdminOrdersFiltersBloc bloc = context.read();

    final DatePickerRangeResult? result = await AppDatePickerDialog.showRange(
      context,
      maxDate: DateTime.now(),
      initialDateRange: state.dateRange,
    );
    if (result == null) return;
    if (result.isReset) {
      return bloc.add(const AdminOrdersFiltersEvent.dateRangeChanged(null));
    }
    return bloc.add(AdminOrdersFiltersEvent.dateRangeChanged(result.dateRange));
  }
}
