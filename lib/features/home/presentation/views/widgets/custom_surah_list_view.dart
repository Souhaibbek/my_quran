import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_quran/core/utils/app_router.dart';
import 'package:my_quran/features/home/domain/entities/surah_entity/surah_entity.dart';

import 'custom_surah_list_item.dart';

class CustomSurahListView extends StatelessWidget {
  final List<SurahEntity> surahs;
  const CustomSurahListView({
    super.key,
    required this.surahs,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            GoRouter.of(context).push(AppRouter.kSurahDetailsView,
                extra: surahs[index].numberOfSurah);
          },
          child: CustomSuratListItem(
            surah: surahs[index],
          )),
      physics: const BouncingScrollPhysics(),
      itemCount: surahs.length,
      shrinkWrap: true,
      separatorBuilder: (BuildContext context, int index) => const SizedBox(
        height: 16,
      ),
    );
  }
}
