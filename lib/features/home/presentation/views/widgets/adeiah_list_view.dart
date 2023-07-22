import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_quran/core/jsons/hisn_almuslim.dart';

import 'adeiah_list_item.dart';

class AdeiahListView extends StatelessWidget {
  const AdeiahListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> keys = husinAlMuslim.keys.toList();
    return ListView.separated(
      itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            // GoRouter.of(context)
            //     .push(kSurahDetailsView, extra: surahs[index].numberOfSurah);
          },
          child: AdeiahListItem(
            title: keys[index],
            index: index + 1,
          )),
      physics: const BouncingScrollPhysics(),
      itemCount: keys.length,
      shrinkWrap: true,
      separatorBuilder: (BuildContext context, int index) => const SizedBox(
        height: 16,
      ),
    );
  }
}
