part of '../home_screen.dart';

class _MyUpcomingBooking extends StatelessWidget {
  const _MyUpcomingBooking();

  @override
  Widget build(BuildContext context) {
    final HomeBloc bloc = context.read();

    return MyBookingsFeature.single(bloc.myBookingsFeatureBloc);
  }
}
