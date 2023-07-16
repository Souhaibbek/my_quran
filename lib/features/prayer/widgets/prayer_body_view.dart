import 'package:flutter/material.dart';
import 'package:my_quran/core/utils/assets.dart';

class PrayerViewBody extends StatelessWidget {
  const PrayerViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: MediaQuery.of(context).size.height * 0.5,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            ImagesAssets.prayBackground,
          ),
          fit: BoxFit.cover,
        )),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    ]);
  }
}
