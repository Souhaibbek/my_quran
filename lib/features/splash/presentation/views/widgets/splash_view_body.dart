import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_quran/core/utils/assets.dart';
import 'package:my_quran/core/utils/styles.dart';
import 'package:my_quran/core/widgets/custom_button.dart';
import 'package:my_quran/features/splash/presentation/views/widgets/sliding_text.dart';

import '../../../../../core/utils/app_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    // navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  ImagesAssets.logo,
                  fit: BoxFit.cover,
                  scale: 0.7,
                ),
                const SizedBox(
                  height: 13.0,
                ),
                Text(
                  'My Quran',
                  textAlign: TextAlign.center,
                  style: Styles.bigTitle30,
                ),
                SlidingText(slidingAnimation: slidingAnimation),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomButton(
              text: 'Welcome',
              height: 53,
              fontSize: 15,
              onPressed: () {
                GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }

  // void navigateToHome() {
  //   Future.delayed(
  //     const Duration(seconds: 5),
  //     () {
  //       GoRouter.of(context).push(AppRouter.kHomeView);
  //     },
  //   );
  // }
}
