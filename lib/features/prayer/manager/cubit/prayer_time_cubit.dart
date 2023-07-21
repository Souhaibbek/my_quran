import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_quran/features/prayer/prayer_times_controller.dart';
part 'prayer_time_state.dart';

class PrayerTimeCubit extends Cubit<PrayerTimeState> {
  PrayerTimeCubit() : super(PrayerTimeInitial());

  static PrayerTimeCubit get(context) => BlocProvider.of(context);

  void setPrayerTimes() async {
    emit(PrayerTimeLoading());
    try {
      var prayerData = await PrayerTimeController.initPrayerTimes();
      emit(PrayerTimeSuccess(prayerData));

      log(prayerData.toString());

      log(prayerData.length.toString());
      log(prayerData[0].toString());
      log(prayerData[1].toString());
    } catch (e) {
      log(e.toString());
      emit(PrayerTimeFailure(e.toString()));
    }
  }
}
