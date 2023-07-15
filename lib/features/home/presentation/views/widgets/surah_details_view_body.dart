import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_quran/core/utils/assets.dart';
import 'package:my_quran/core/utils/colors.dart';
import 'package:my_quran/core/utils/styles.dart';
import 'package:my_quran/core/widgets/surah_starter_finisher.dart';
import 'package:my_quran/features/home/presentation/views/widgets/custom_ayah_list_view.dart';

import '../../manager/fetch_ayahs_cubit/fetch_ayahs_data_cubit.dart';
import 'ayah_loading_widget.dart';

class SurahDetailsViewBody extends StatelessWidget {
  const SurahDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchAyahsDataCubit, FetchAyahsDataState>(
      builder: (context, state) {
        if (state is FetchAyahsDataSuccess) {
          return SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
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
                          state.ayahs[0].nameEn.toString(),
                          style: Styles.details14w500.copyWith(fontSize: 26),
                        ),
                        Text(
                          state.ayahs[0].nameEtr.toString(),
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
                              text: state.ayahs[0].type.toString(),
                              style: Styles.details14w500,
                            ),
                            TextSpan(
                              text: ' - ',
                              style: Styles.details14w500,
                            ),
                            TextSpan(
                              text: '${state.ayahs[0].numOfAyahs}verses',
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

                  // const SurahStarter(),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomAyahListView(
                    ayahs: state.ayahs[0].ayahsList,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SurahFinisher(),
                ],
              ),
            ),
          );
        } else if (state is FetchAyahsDataFailure) {
          return Text(state.errMsg);
        } else {
          return const AyahLoadingWidget();
        }
      },
    );
  }
}
