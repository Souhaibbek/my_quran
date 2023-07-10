import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_quran/core/utils/app_router.dart';

import 'custom_surah_list_item.dart';

class CustomSurahListView extends StatelessWidget {
  const CustomSurahListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            GoRouter.of(context).push(AppRouter.kSurahDetailsView);
          },
          child: const CustomSuratListItem()),
      physics: const BouncingScrollPhysics(),
      itemCount: 20,
      shrinkWrap: true,
      separatorBuilder: (BuildContext context, int index) => const SizedBox(
        height: 16,
      ),
    );
  }
}
