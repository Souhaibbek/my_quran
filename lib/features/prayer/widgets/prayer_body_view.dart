import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_quran/core/utils/assets.dart';
import 'package:my_quran/core/utils/colors.dart';
import 'package:my_quran/core/utils/styles.dart';
import 'custom_prayer_appbar.dart';
import 'custom_prayer_item.dart';

class PrayerViewBody extends StatelessWidget {
  const PrayerViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const CustomPrayerTimesAppBar(),
          SizedBox(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36),
                    color: AppColors.kWhiteColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                            color: AppColors.kBlackColor,
                          ),
                        ),
                        Center(
                          child: Text(
                            DateFormat('d MMMM yyyy ').format(DateTime.now()),
                            style: Styles.titleBold16Black,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.kBlackColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomPrayerItem(
                  icons: ImagesAssets.fajr,
                  name: 'Fajr',
                  time: '03:45',
                ),
                const SizedBox(
                  height: 8,
                ),
                const CustomPrayerItem(
                  icons: ImagesAssets.sunrise,
                  name: 'Shourouk',
                  time: '05:32',
                ),
                const SizedBox(
                  height: 8,
                ),
                const CustomPrayerItem(
                  icons: ImagesAssets.dhuhr,
                  name: 'Dhuhr',
                  time: '01:00',
                ),
                const SizedBox(
                  height: 8,
                ),
                const CustomPrayerItem(
                  icons: ImagesAssets.asr,
                  name: 'asr',
                  time: '04:15',
                ),
                const SizedBox(
                  height: 8,
                ),
                const CustomPrayerItem(
                  icons: ImagesAssets.maghreb,
                  name: 'Maghreb',
                  time: '19:45',
                ),
                const SizedBox(
                  height: 8,
                ),
                const CustomPrayerItem(
                  icons: ImagesAssets.isha,
                  name: 'Isha',
                  time: '21:33',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
