import 'package:flutter/material.dart';
import 'package:my_quran/core/utils/assets.dart';
import 'package:my_quran/core/utils/colors.dart';
import 'package:my_quran/core/utils/styles.dart';
import 'package:my_quran/features/home/domain/entities/surah_entity/surah_entity.dart';

class CustomSuratListItem extends StatelessWidget {
  final SurahEntity surah;
  const CustomSuratListItem({
    super.key,
    required this.surah,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: SizedBox(
        height: 68,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: double.infinity,
              width: 7,
              decoration: BoxDecoration(
                color: AppColors.kPrimaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: SizedBox(
                child: Card(
                  elevation: 5,
                  child: Row(children: [
                    const SizedBox(width: 10),
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Image.asset(ImagesAssets.index),
                        Text(
                          surah.numberOfSurah.toString(),
                          style: Styles.textPurplew500.copyWith(fontSize: 14),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          surah.nameEn,
                          style: Styles.textPurplew500,
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              surah.type.toUpperCase(),
                              style: Styles.detailsTextw500,
                            ),
                            Text(
                              '  ${surah.length} AYA'.toUpperCase(),
                              style: Styles.detailsTextw500,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    Text(
                      surah.nameSurah.substring(8, surah.nameSurah.length),
                      textAlign: TextAlign.right,
                      style: Styles.surahTitle,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
