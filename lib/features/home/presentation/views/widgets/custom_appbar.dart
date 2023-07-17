import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:my_quran/core/utils/assets.dart';
import 'package:my_quran/core/utils/constants.dart';
import 'package:my_quran/core/utils/styles.dart';
import 'package:my_quran/core/widgets/custom_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: MediaQuery.of(context).size.height / 2.5,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Image.asset(
                ImagesAssets.homeImg1,
                width: MediaQuery.of(context).size.width * 0.55,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StreamBuilder(
                    stream: Stream.periodic(const Duration(seconds: 1)),
                    builder: (context, snapshot) => Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'My Quran',
                          style: Styles.bigTitle30,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          DateFormat('hh:mm').format(DateTime.now()),
                          textAlign: TextAlign.left,
                          style: Styles.bigDarkTextBold,
                        ),
                        Text(
                          DateFormat('EEE, MMMM d, ' 'yyyy')
                              .format(DateTime.now()),
                          textAlign: TextAlign.left,
                          style: Styles.bigDarkTextBold
                              .copyWith(fontSize: 10, height: 0.5),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  CustomButton(
                    text: 'Prayer Times',
                    radius: 7.0,
                    height: 30,
                    width: 120,
                    onPressed: () {
                      GoRouter.of(context).push(kPrayerView);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
