import 'package:flutter/material.dart';
import 'package:my_quran/core/utils/assets.dart';
import 'package:my_quran/core/utils/colors.dart';
import 'package:my_quran/core/utils/styles.dart';
import 'package:my_quran/core/widgets/surah_starter_finisher.dart';

import 'ayah_list_bloc_builder.dart';

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
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  ImagesAssets.backgroundAya,
                ),
                fit: BoxFit.fill,
              )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Al-Fatihah',
                    style: Styles.details14w500.copyWith(fontSize: 26),
                  ),
                  Text(
                    'The Openning',
                    style: Styles.details14w500.copyWith(fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Container(
                      height: 1,
                      width: 150,
                      color: AppColors.kWhiteColor,
                    ),
                  ),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'Meccan',
                        style: Styles.details14w500,
                      ),
                      TextSpan(
                        text: ' - ',
                        style: Styles.details14w500,
                      ),
                      TextSpan(
                        text: '7 verses',
                        style: Styles.details14w500,
                      ),
                    ]),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Image.asset(ImagesAssets.besmellah),
                ],
              ),
            ),

            // const SurahStarter(),
            const SizedBox(
              height: 10,
            ),
            const AyahListBlocBuilder(),
            const SizedBox(
              height: 10,
            ),
            const SurahFinisher(),
          ],
        ),
      ),
    );
  }
}
