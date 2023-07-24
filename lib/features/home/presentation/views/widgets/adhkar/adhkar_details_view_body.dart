import 'package:flutter/material.dart';
import 'package:my_quran/core/jsons/adhkar.dart';
import 'package:my_quran/core/utils/colors.dart';
import 'package:my_quran/core/utils/styles.dart';
import 'custom_dhikr_list.dart';

class AdhkarDetailsViewBody extends StatelessWidget {
  const AdhkarDetailsViewBody({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    var keys = adhkar.keys.toList();
    List item = adhkar[keys[index]]!;
    return SafeArea(
      child: Column(
        children: [
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.kWhiteColor,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  item[0]['category'].toString(),
                  style: Styles.ayahTextAr,
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Flexible(
            child: CustomDhikrList(item: item),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
