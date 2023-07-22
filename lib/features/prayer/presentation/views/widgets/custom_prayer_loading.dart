import 'package:flutter/material.dart';
import 'package:my_quran/core/utils/assets.dart';
import 'package:my_quran/core/utils/colors.dart';
import 'package:my_quran/core/utils/styles.dart';
import 'package:shimmer/shimmer.dart';

class CustomPrayerLoading extends StatelessWidget {
  const CustomPrayerLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.kPrayerBackground,
      highlightColor: AppColors.kPrimaryColor,
      direction: ShimmerDirection.rtl,
      period: const Duration(seconds: 3),
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(
                      ImagesAssets.prayBackground,
                    ),
                    fit: BoxFit.cover,
                  )),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25.0, 20.0, 25.0, 10.0),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Prayer Times',
                                  style: Styles.titleBold20,
                                ),
                                Text(
                                  '',
                                  style: Styles.titleBold20.copyWith(
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  '',
                                  style: Styles.titleBold20.copyWith(
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            const InkWell(
                              child: Icon(
                                Icons.notifications,
                                color: AppColors.kWhiteColor,
                                size: 40,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '',
                              textAlign: TextAlign.left,
                              style: Styles.titleBold20,
                            ),
                            Text(
                              'Indeed, prayer has been decreed upon the believers a decree of specified times.',
                              style: Styles.ayahTextEn.copyWith(
                                  fontSize: 10, color: AppColors.kWhiteColor),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36),
                  color: AppColors.kWhiteColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          color: AppColors.kBlackColor,
                        ),
                      ),
                      Center(
                        child: Text(
                          '',
                          style: Styles.titleBold16Black,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.kBlackColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: SizedBox(
                                  height: 68,
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: SizedBox(
                                          child: Card(
                                            elevation: 5,
                                            child: Row(children: [
                                              const SizedBox(width: 10),
                                              Stack(
                                                alignment:
                                                    AlignmentDirectional.center,
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
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    '',
                                                    style:
                                                        Styles.textPurplew500,
                                                  ),
                                                  const SizedBox(height: 5),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        '',
                                                        style: Styles
                                                            .detailsTextw500,
                                                      ),
                                                      Text(
                                                        '',
                                                        style: Styles
                                                            .detailsTextw500,
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
                            );
                          },
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              height: 8.0,
                            );
                          },
                          itemCount: 7),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
