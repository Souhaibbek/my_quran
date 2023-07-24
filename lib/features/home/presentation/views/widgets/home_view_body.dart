import 'package:flutter/material.dart';
import 'package:my_quran/core/utils/colors.dart';
import 'package:my_quran/core/utils/styles.dart';
import 'package:my_quran/core/widgets/custom_button.dart';
import 'adhkar/adhkar_list_view.dart';
import 'custom_appbar.dart';
import 'surah/surah_list_bloc_builder.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
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
            Row(
              children: [
                CustomButton(
                  onPressed: () {
                    setState(() {
                      currentPage = 0;
                    });
                  },
                  text: 'SURAH',
                  radius: 20,
                  height: 37,
                  width: 73,
                  borderColor: currentPage == 0
                      ? AppColors.kPrimaryColor
                      : AppColors.kBlackColor,
                  backgroundColor: currentPage == 0
                      ? AppColors.kPrimaryColor
                      : AppColors.kWhiteColor,
                  textColor: currentPage == 0
                      ? AppColors.kWhiteColor
                      : AppColors.kBlackColor,
                ),
                const SizedBox(
                  width: 11,
                ),
                CustomButton(
                  onPressed: () {
                    setState(() {
                      currentPage = 1;
                    });
                  },
                  text: 'DOAA',
                  radius: 20,
                  height: 37,
                  width: 73,
                  borderColor: currentPage == 1
                      ? AppColors.kPrimaryColor
                      : AppColors.kBlackColor,
                  backgroundColor: currentPage == 1
                      ? AppColors.kPrimaryColor
                      : AppColors.kWhiteColor,
                  textColor: currentPage == 1
                      ? AppColors.kWhiteColor
                      : AppColors.kBlackColor,
                ),
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            (currentPage == 1)
                ? const AdhkarListView()
                : const SurahListBlocBuilder(),
          ],
        ),
      ),
    );
  }
}
