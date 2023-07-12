import 'package:flutter/material.dart';
import 'package:my_quran/core/utils/styles.dart';
import 'package:my_quran/core/widgets/surah_starter_finisher.dart';

import 'ayah_list_bloc_builder.dart';

class SurahDetailsViewBody extends StatelessWidget {
  const SurahDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Al-Fatihah',
              style: Styles.bigTitle30,
            ),
            Text(
              'MEKAH',
              style: Styles.blackSurahName,
            ),
            const SizedBox(
              height: 50,
            ),
            const SurahStarter(),
            const SizedBox(
              height: 10,
            ),
            const AyahListBlocBuilder(),
            const SizedBox(
              height: 10,
            ),
            const SurahFinisher(),
          ],
        ),
      ),
    );
  }
}
