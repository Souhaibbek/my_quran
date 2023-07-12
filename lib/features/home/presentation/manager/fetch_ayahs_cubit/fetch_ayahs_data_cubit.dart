import 'package:bloc/bloc.dart';
import 'package:my_quran/features/home/domain/entities/ayah_entity/ayah_entity.dart';
import 'package:my_quran/features/home/domain/use_cases/fetch_ayah_all_data_use_case.dart';

part 'fetch_ayahs_data_state.dart';

class FetchAyahsDataCubit extends Cubit<FetchAyahsDataState> {
  FetchAyahsDataCubit(this.fetchAyahAllDataUseCase)
      : super(FetchAyahsDataInitial());
  final FetchAyahAllDataUseCase fetchAyahAllDataUseCase;
  Future<void> fetchAyahsData() async {
    emit(FetchAyahsDataLoading());
    var result = await fetchAyahAllDataUseCase.call();
    result.fold((failure) {
      emit(
        FetchAyahsDataFailure(failure.msg),
      );
      print('//////////////////////////');
      print(failure.msg);
    }, (ayahs) {
      emit(
        FetchAyahsDataSuccess(ayahs),
      );
      print('//////////////////////////');
      print('Success');
    });
  }
}
