import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_quran/core/utils/assets.dart';
import 'package:my_quran/core/utils/colors.dart';
import 'package:my_quran/core/utils/styles.dart';
import 'package:my_quran/features/home/domain/entities/ayah_entity/ayah_entity.dart';

class CustomAyahListItem extends StatelessWidget {
  final AyahEntity ayah;
  const CustomAyahListItem({
    super.key,
    required this.ayah,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.kLightGreyContainerColor,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: AppColors.kPrimaryColor,
                    child: Text(
                      ayah.ayahNumber.toString(),
                      textAlign: TextAlign.center,
                      style: Styles.title16W700
                          .copyWith(color: AppColors.kWhiteColor),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(ImagesAssets.shareIcon),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(ImagesAssets.playIcon),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(ImagesAssets.bookmarkIcon),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                ayah.ayahText,
                style: Styles.ayahTextAr,
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
              ),
              Text(
                '[All] praise is [due] to Allah, Lord of the worlds -',
                style: Styles.ayahTextEn,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
