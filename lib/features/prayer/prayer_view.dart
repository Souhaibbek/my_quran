import 'package:flutter/material.dart';
import 'package:my_quran/core/utils/colors.dart';
import 'package:my_quran/features/prayer/widgets/prayer_body_view.dart';

class PrayerView extends StatelessWidget {
  const PrayerView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PrayerViewBody(),
      backgroundColor: AppColors.kPrayerBackground,
    );
  }
}
