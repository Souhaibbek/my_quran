import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:my_quran/features/home/domain/entities/surah_entity/surah_entity.dart';
import 'package:my_quran/features/home/domain/use_cases/fetch_all_surah_data_use_case.dart';

part 'fetch_surahs_data_state.dart';

class FetchSurahsDataCubit extends Cubit<FetchSurahsDataState> {
  FetchSurahsDataCubit(this.fetchAllSurahDataUseCase)
      : super(FetchSurahsDataInitial());
  final FetchAllSurahDataUseCase fetchAllSurahDataUseCase;
  DateTime today = DateTime.now();

  Future<void> fetchSurahData() async {
    log('fetshSurah');
    emit(FetchSurahsDataLoading());
    var result = await fetchAllSurahDataUseCase.call();

    result.fold((failure) {
      emit(
        FetchSurahsDataFailure(failure.msg),
      );
    }, (surahs) {
      emit(
        FetchSurahsDataSuccess(surahs),
      );
    });
  }
}
