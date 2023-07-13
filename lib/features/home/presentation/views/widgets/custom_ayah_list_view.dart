import 'package:flutter/material.dart';
import 'package:my_quran/core/utils/colors.dart';
import 'package:my_quran/features/home/domain/entities/ayah_entity/ayah_entity.dart';

import 'custom_ayah_list_item.dart';

class CustomAyahListView extends StatelessWidget {
  final List<AyahEntity> ayahs;
  const CustomAyahListView({
    super.key,
    required this.ayahs,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: ayahs.length,
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
        return CustomAyahListItem(
          ayah: ayahs[index],
        );
      },
    );
  }
}
