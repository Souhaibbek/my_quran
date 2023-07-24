import 'package:flutter/material.dart';
import 'package:my_quran/core/utils/colors.dart';
import 'package:my_quran/core/utils/styles.dart';
import 'package:shimmer/shimmer.dart';

class SurahLoadingWidget extends StatelessWidget {
  const SurahLoadingWidget({
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
        physics: const BouncingScrollPhysics(),
        itemCount: 7,
        shrinkWrap: true,
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          height: 16,
        ),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: SizedBox(
              height: 68,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    height: double.infinity,
                    width: 7,
                    decoration: BoxDecoration(
                      color: AppColors.kPrimaryColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: SizedBox(
                      child: Card(
                        elevation: 5,
                        child: Row(children: [
                          const SizedBox(width: 10),
                          Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              Text(
                                '',
                                style: Styles.textPurplew500
                                    .copyWith(fontSize: 14),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '',
                                style: Styles.textPurplew500,
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  Text(
                                    '',
                                    style: Styles.detailsTextw500,
                                  ),
                                  Text(
                                    '',
                                    style: Styles.detailsTextw500,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Spacer(),
                          Text(
                            '',
                            textAlign: TextAlign.right,
                            style: Styles.surahTitle,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                        ]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
