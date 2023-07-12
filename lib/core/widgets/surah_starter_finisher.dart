import 'package:flutter/material.dart';
import 'package:my_quran/core/utils/assets.dart';

import '../utils/styles.dart';

class SurahStarter extends StatelessWidget {
  const SurahStarter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Image.asset(
              ImagesAssets.index,
            ),
            const Icon(Icons.ac_unit_outlined),
          ],
        ),
        const SizedBox(width: 10),
        Text(
          'بِسْمِ اللَّـهِ الرَّحْمَـٰنِ الرَّحِيم',
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
          style: Styles.bigTitleSSurah30.copyWith(
            fontSize: 20,
          ),
        ),
        const SizedBox(width: 10),
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Image.asset(
              ImagesAssets.index,
            ),
            const Icon(Icons.ac_unit_outlined),
          ],
        ),
      ],
    );
  }
}

class SurahFinisher extends StatelessWidget {
  const SurahFinisher({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Image.asset(
              ImagesAssets.index,
            ),
            const Icon(Icons.ac_unit_outlined),
          ],
        ),
        const SizedBox(width: 10),
        Text(
          'صدق اللَّـهِ العظيم',
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
          style: Styles.bigTitleSSurah30.copyWith(
            fontSize: 20,
          ),
        ),
        const SizedBox(width: 10),
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Image.asset(
              ImagesAssets.index,
            ),
            const Icon(Icons.ac_unit_outlined),
          ],
        ),
      ],
    );
  }
}
