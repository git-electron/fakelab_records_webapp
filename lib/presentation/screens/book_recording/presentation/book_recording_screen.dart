import 'package:auto_route/auto_route.dart';
import 'package:fakelab_records_webapp/presentation/screens/book_recording/domain/bloc/bookings_bloc.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BookRecordingScreen extends StatelessWidget {
  const BookRecordingScreen({
    required this.selectedTime,
    required this.bookingsBloc,
    required this.selectedDuration,
    super.key,
  });

  final DateTime selectedTime;
  final Duration selectedDuration;
  final BookingsBloc bookingsBloc;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
