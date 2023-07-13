import 'package:flutter/material.dart';
import 'package:my_quran/core/utils/colors.dart';

import '../../../../../core/utils/styles.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    Key? key,
    required this.slidingAnimation,
  }) : super(key: key);

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: Text(
              'ولقد يسرنا القرآن للذكر فهل من مدكر',
              textAlign: TextAlign.center,
              style:
                  Styles.hintSplash15.copyWith(color: AppColors.kPrimaryColor),
            ),
          );
        });
  }
}
