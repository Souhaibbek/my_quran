import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_quran/features/home/presentation/manager/fetch_surahs_cubit/fetch_surahs_data_cubit.dart';

import 'custom_surah_list_view.dart';

class SurahListBlocBuilder extends StatelessWidget {
  const SurahListBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchSurahsDataCubit, FetchSurahsDataState>(
      builder: (context, state) {
        if (state is FetchSurahsDataSuccess) {
          return CustomSurahListView(
            surahs: state.surahs,
          );
        } else if (state is FetchSurahsDataFailure) {
          return Text(state.errMsg);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
