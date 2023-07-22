import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:my_quran/features/prayer/prayer_times_controller.dart';
part 'prayer_time_state.dart';

class PrayerTimeCubit extends Cubit<PrayerTimeState> {
  PrayerTimeCubit() : super(PrayerTimeInitial());

  static PrayerTimeCubit get(context) => BlocProvider.of(context);
  late List<Placemark> placemarks;

  void setPrayerTimes() async {
    emit(PrayerTimeLoading());
    try {
      var prayerData = await PrayerTimeController.initPrayerTimes();
      placemarks = PrayerTimeController.placemarks;
      emit(PrayerTimeSuccess(prayerData));
    } catch (e) {
      log(e.toString());
      emit(PrayerTimeFailure(e.toString()));
    }
  }
}
