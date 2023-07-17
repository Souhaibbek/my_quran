import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_quran/core/utils/assets.dart';
import 'package:my_quran/core/utils/colors.dart';
import 'package:my_quran/core/utils/styles.dart';
import 'package:sizer/sizer.dart';

class CustomPrayerTimesAppBar extends StatelessWidget {
  const CustomPrayerTimesAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(seconds: 1)),
      builder: (context, snapshot) => Container(
        height: MediaQuery.of(context).size.height * 0.4,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            ImagesAssets.prayBackground,
          ),
          fit: BoxFit.cover,
        )),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25.0, 20.0, 25.0, 10.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Prayer Times',
                        style: Styles.titleBold20,
                      ),
                      Text(
                        'Tataouine',
                        style: Styles.titleBold20.copyWith(
                          fontSize: 15.sp,
                        ),
                      ),
                      Text(
                        'Tunisia',
                        style: Styles.titleBold20.copyWith(
                          fontSize: 15.sp,
                        ),
                      ),
                    ],
                  ),
                  const InkWell(
                    child: Icon(
                      Icons.notifications,
                      color: AppColors.kWhiteColor,
                      size: 40,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    DateFormat().add_jms().format(DateTime.now()),
                    textAlign: TextAlign.left,
                    style: Styles.titleBold20,
                  ),
                  Text(
                    'Indeed, prayer has been decreed upon the believers a decree of specified times.',
                    style: Styles.ayahTextEn
                        .copyWith(fontSize: 10, color: AppColors.kWhiteColor),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
