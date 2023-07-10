import 'package:flutter/material.dart';

import 'custom_surah_list_item.dart';

class CustomSurahListView extends StatelessWidget {
  const CustomSurahListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => const CustomSuratListItem(),
      physics: const BouncingScrollPhysics(),
      itemCount: 20,
      shrinkWrap: true,
      separatorBuilder: (BuildContext context, int index) => const SizedBox(
        height: 16,
      ),
    );
  }
}
