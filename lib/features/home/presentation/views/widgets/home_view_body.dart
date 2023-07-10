import 'package:flutter/material.dart';
import 'package:my_quran/core/utils/colors.dart';
import 'package:my_quran/core/utils/styles.dart';
import 'package:my_quran/core/widgets/custom_button.dart';
import 'custom_appbar.dart';
import 'custom_surah_list_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CustomAppBar(),
            const SizedBox(
              height: 18,
            ),
            Text(
              'Categories',
              style: Styles.title16W700,
            ),
            const SizedBox(
              height: 11,
            ),
            const Row(
              children: [
                CustomButton(
                  text: 'SURAH',
                  radius: 20,
                  height: 37,
                  width: 73,
                ),
                SizedBox(
                  width: 11,
                ),
                CustomButton(
                  text: 'Duaa',
                  radius: 20,
                  height: 37,
                  width: 73,
                  borderColor: AppColors.kBlackColor,
                  backgroundColor: AppColors.kWhiteColor,
                  textColor: AppColors.kBlackColor,
                ),
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            const CustomSurahListView(),
          ],
        ),
      ),
    );
  }
}

class CustomSurahListView extends StatelessWidget {
  const CustomSurahListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => const CustomSuratListItem(),
      physics: const BouncingScrollPhysics(),
      itemCount: 20,
      shrinkWrap: true,
      separatorBuilder: (BuildContext context, int index) => const SizedBox(
        height: 16,
      ),
    );
  }
}
