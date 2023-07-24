import 'package:flutter/material.dart';
import 'package:my_quran/core/utils/assets.dart';
import 'package:my_quran/core/utils/colors.dart';
import 'package:my_quran/core/utils/styles.dart';
import 'package:shimmer/shimmer.dart';

class AyahLoadingWidget extends StatelessWidget {
  const AyahLoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.kLightGreyContainerColor,
      highlightColor: AppColors.kPrimaryColor,
      direction: ShimmerDirection.rtl,
      period: const Duration(seconds: 3),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                      image: AssetImage(
                        ImagesAssets.backgroundAya,
                      ),
                      fit: BoxFit.cover,
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      '',
                      style: Styles.details14w500.copyWith(fontSize: 26),
                    ),
                    Text(
                      '',
                      style: Styles.details14w500.copyWith(fontSize: 16),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Container(
                        height: 1,
                        width: 150,
                        color: AppColors.kWhiteColor,
                      ),
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: '',
                          style: Styles.details14w500,
                        ),
                        TextSpan(
                          text: ' - ',
                          style: Styles.details14w500,
                        ),
                        TextSpan(
                          text: '',
                          style: Styles.details14w500,
                        ),
                      ]),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Image.asset(ImagesAssets.besmellah),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.separated(
                itemCount: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Container(
                      width: double.infinity,
                      height: 1,
                      decoration: const BoxDecoration(
                        color: AppColors.kLightGreyContainerColor,
                      ),
                    ),
                  );
                },
                itemBuilder: (context, index) {
                  return SizedBox(
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors.kLightGreyContainerColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: 60,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: AppColors.kBlackColor.withOpacity(0.04),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
