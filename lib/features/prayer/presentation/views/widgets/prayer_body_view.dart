import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:my_quran/core/utils/colors.dart';
import 'package:my_quran/core/utils/constants.dart';
import 'package:my_quran/core/utils/styles.dart';
import 'package:my_quran/features/prayer/manager/cubit/prayer_time_cubit.dart';
import 'package:sizer/sizer.dart';
import 'custom_prayer_appbar.dart';
import 'custom_prayer_item.dart';
import 'custom_prayer_loading.dart';

class PrayerViewBody extends StatelessWidget {
  const PrayerViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PrayerTimeCubit, PrayerTimeState>(
      builder: (context, state) {
        if (state is PrayerTimeSuccess) {
          var placeMarks = BlocProvider.of<PrayerTimeCubit>(context).placemarks;

          return SafeArea(
            child: Column(
              children: [
                CustomPrayerTimesAppBar(
                  placeMark: placeMarks,
                ),
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
                                  DateFormat('d MMMM yyyy ')
                                      .format(DateTime.now()),
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
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.sp),
                        child: ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return CustomPrayerItem(
                                icons: prayerIcons[index],
                                name: prayerNames[index],
                                time: state.prayerData[index],
                              );
                            },
                            separatorBuilder: (context, index) {
                              return const SizedBox(
                                height: 8.0,
                              );
                            },
                            itemCount: state.prayerData.length),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        } else if (state is PrayerTimeFailure) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Error:we can\'t get access to your location,\n\nPlease check if the location services is available in this device and try again.',
                style: Styles.hintText15,
              ),
            ),
          );
        } else {
          return const CustomPrayerLoading();
        }
      },
    );
  }
}
