part of 'prayer_time_cubit.dart';

abstract class PrayerTimeState {}

class PrayerTimeInitial extends PrayerTimeState {}

class PrayerTimeLoading extends PrayerTimeState {}

class PrayerTimeFailure extends PrayerTimeState {
  final String errMsg;

  PrayerTimeFailure(this.errMsg);
}

class PrayerTimeSuccess extends PrayerTimeState {
  final List<String> prayerData;

  PrayerTimeSuccess(this.prayerData);
}
