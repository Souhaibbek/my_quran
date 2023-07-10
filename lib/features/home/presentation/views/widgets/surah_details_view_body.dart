import 'package:flutter/material.dart';
import 'package:my_quran/core/utils/colors.dart';
import 'package:my_quran/core/utils/styles.dart';
import 'package:my_quran/core/widgets/surah_starter.dart';

import 'custom_ayah_list_item.dart';

class SurahDetailsViewBody extends StatelessWidget {
  const SurahDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Al-Fatihah',
              style: Styles.bigTitle30,
            ),
            Text(
              'MEKAH',
              style: Styles.blackSurahName,
            ),
            const SizedBox(
              height: 50,
            ),
            const SurahStarter(),
            const SizedBox(
              height: 10,
            ),
            ListView.separated(
              itemCount: 7,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    width: double.infinity,
                    height: 1,
                    decoration: const BoxDecoration(
                      color: AppColors.kLightGreyContainerColor,
                    ),
                  ),
                );
              },
              itemBuilder: (context, index) {
                return const CustomAyahListItem();
              },
            ),
          ],
        ),
      ),
    );
  }
}
