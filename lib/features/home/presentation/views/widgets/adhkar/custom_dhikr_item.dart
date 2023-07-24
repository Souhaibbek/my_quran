import 'package:flutter/material.dart';
import 'package:my_quran/core/utils/colors.dart';
import 'package:my_quran/core/utils/styles.dart';

class CustomDhikrItem extends StatelessWidget {
  const CustomDhikrItem({
    super.key,
    required this.dhikr,
  });
  final Map dhikr;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.kWhiteColor,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    '${dhikr['content']}',
                    style: Styles.dhikrText,
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                  ),
                  if (dhikr['description'] != '')
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        '${dhikr['description']}',
                        style: Styles.dhikrDesc,
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: AppColors.kPrimaryColor,
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'تكرار: ${dhikr['count']}',
                  style:
                      Styles.dhikrDesc.copyWith(color: AppColors.kWhiteColor),
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
