import 'package:adhan_dart/adhan_dart.dart';
import 'package:intl/intl.dart';
import 'package:my_quran/features/prayer/location_services.dart';
import 'package:geocoding/geocoding.dart';

class PrayerTimeController {
  static List<Placemark> placemarks = [];
  static Future<List<String>> initPrayerTimes() async {
    final List<String> prayerData = [];

    //determineLocation
    final location = await LocationService.determineLocation();

    //get coordinatess
    final coordinates = Coordinates(location.latitude, location.longitude);

    //getAddress
    placemarks =
        await placemarkFromCoordinates(location.latitude!, location.longitude!);

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
    prayerTimes.fajr = prayerTimes.fajr?.add(const Duration(hours: 1));
    final fajr = DateFormat.jm().format(prayerTimes.fajr!);
    prayerData.add(fajr);

    prayerTimes.sunrise = prayerTimes.sunrise?.add(const Duration(hours: 1));
    final sunrise = DateFormat.jm().format(prayerTimes.sunrise!);
    prayerData.add(sunrise);

    prayerTimes.dhuhr = prayerTimes.dhuhr?.add(const Duration(hours: 1));
    final dhuhr = DateFormat.jm().format(prayerTimes.dhuhr!);
    prayerData.add(dhuhr);

    prayerTimes.asr = prayerTimes.asr?.add(const Duration(hours: 1));
    final asr = DateFormat.jm().format(prayerTimes.asr!);
    prayerData.add(asr);

    prayerTimes.maghrib = prayerTimes.maghrib?.add(const Duration(hours: 1));
    final maghrib = DateFormat.jm().format(prayerTimes.maghrib!);
    prayerData.add(maghrib);

    prayerTimes.isha = prayerTimes.isha?.add(const Duration(hours: 1));
    final isha = DateFormat.jm().format(prayerTimes.isha!);
    prayerData.add(isha);

    return prayerData;
  }
}
