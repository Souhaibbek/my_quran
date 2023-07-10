import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_quran/core/utils/assets.dart';
import 'package:my_quran/core/utils/colors.dart';
import 'package:my_quran/core/utils/styles.dart';

class CustomAyahListItem extends StatelessWidget {
  const CustomAyahListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
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
                    radius: 15,
                    backgroundColor: AppColors.kPrimaryColor,
                    child: Text(
                      '1',
                      style: Styles.title16W700
                          .copyWith(color: AppColors.kWhiteColor),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(ImagesAssets.shareIcon),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(ImagesAssets.playIcon),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(ImagesAssets.bookmarkIcon),
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
                'الْحَمْدُ لِلَّهِ رَبِّ الْعٰلَمِينَ',
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
