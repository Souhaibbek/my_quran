import 'package:flutter/material.dart';
import 'package:my_quran/core/utils/colors.dart';
import 'package:my_quran/core/utils/styles.dart';

class CustomPrayerItem extends StatelessWidget {
  final String icons;
  final String name;
  final String time;
  const CustomPrayerItem({
    super.key,
    required this.icons,
    required this.name,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            icons,
            height: 30,
            color: AppColors.kWhiteColor,
          ),
          Text(
            name,
            style: Styles.text13w700,
          ),
          Text(
            time,
            style: Styles.text13w700,
          ),
        ],
      ),
    );
  }
}
