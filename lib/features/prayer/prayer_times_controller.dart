import 'package:adhan_dart/adhan_dart.dart';
import 'package:intl/intl.dart';
import 'package:my_quran/features/prayer/geo_locator.dart';

class PrayerTimeController {
  late DateTime dateTime;
  late Coordinates coordinates;
  late CalculationParameters params;

  String fajr = "";
  String sunrise = "";
  String dhuhr = "";
  String asr = "";
  String maghrib = "";
  String isha = "";

  static Future<List<String>> initPrayerTimes() async {
    final List<String> prayerData = [];

    //init location
    final position = await ServiceLocator.determinePosition();
    //get coordinatess
    final coordinates = Coordinates(position.latitude, position.longitude);
    //get date
    final dateTime = DateTime.now();

    //setup params
    final params = CalculationMethod.MuslimWorldLeague();
    params.madhab = Madhab.Shafi;
    //fetch prayertimes
    var prayerTimes = PrayerTimes(
      coordinates,
      dateTime,
      params,
      precision: false,
    );
    final fajr = DateFormat.jm().format(prayerTimes.fajr!);
    prayerData.add(fajr);
    final sunrise = DateFormat.jm().format(prayerTimes.sunrise!);
    prayerData.add(sunrise);

    final dhuhr = DateFormat.jm().format(prayerTimes.dhuhr!);
    prayerData.add(dhuhr);

    final asr = DateFormat.jm().format(prayerTimes.asr!);
    prayerData.add(asr);

    final maghrib = DateFormat.jm().format(prayerTimes.maghrib!);
    prayerData.add(maghrib);

    final isha = DateFormat.jm().format(prayerTimes.isha!);
    prayerData.add(isha);
    return prayerData;
  }
}
