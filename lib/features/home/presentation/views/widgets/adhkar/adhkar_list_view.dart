import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_quran/core/jsons/adhkar.dart';
import 'package:my_quran/core/utils/constants.dart';

import 'adhkar_list_item.dart';

class AdhkarListView extends StatelessWidget {
  const AdhkarListView({super.key});

  @override
  Widget build(BuildContext context) {
    var keys = adhkar.keys.toList();
    return ListView.separated(
      itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            GoRouter.of(context).push(
              kAdhkarDetailsView,
              extra: index,
            );
          },
          child: AdhkarListItem(
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
