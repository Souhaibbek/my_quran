import 'package:flutter/material.dart';
import 'package:my_quran/core/utils/colors.dart';
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
      child: ListView.separated(
        itemCount: 7,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
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
                      height: 50,
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
    );
  }
}
