part of '../bookings_bloc.dart';

extension ArgumentDataExtensions on BookingsState {
  Duration getMaxDuration(DateTime time) {
    return getAvailableDurations(time).lastOrNull ?? kHourDuration;
  }
}
