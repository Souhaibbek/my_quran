import 'package:flutter/material.dart';
import 'package:my_quran/core/utils/assets.dart';
import 'package:my_quran/core/utils/colors.dart';
import 'package:my_quran/core/utils/styles.dart';
import 'package:my_quran/core/widgets/custom_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.35,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Image.asset(
                ImagesAssets.homeImg1,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'My Quran',
                    style: Styles.bigTitle30,
                  ),
                  Text(
                    'Read The Quran Easily',
                    textAlign: TextAlign.left,
                    style: Styles.hintText15.copyWith(
                      color: AppColors.kBlackColor,
                    ),
                  ),
                  Text(
                    '19:21',
                    textAlign: TextAlign.left,
                    style: Styles.bigDarkTextBold,
                  ),
                  Text(
                    'Ramadan 23, 1444 AH',
                    textAlign: TextAlign.left,
                    style: Styles.bigDarkTextBold
                        .copyWith(fontSize: 10, height: 0.5),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const CustomButton(
                    text: 'Shubuh 4:17 AM',
                    radius: 7.0,
                    height: 29,
                    width: 117,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
