part of 'fetch_surahs_data_cubit.dart';

abstract class FetchSurahsDataState {}

class FetchSurahsDataInitial extends FetchSurahsDataState {}

class FetchSurahsDataLoading extends FetchSurahsDataState {}

class FetchSurahsDataFailure extends FetchSurahsDataState {
  final String errMsg;

  FetchSurahsDataFailure(this.errMsg);
}

class FetchSurahsDataSuccess extends FetchSurahsDataState {
  final List<SurahEntity> surahs;

  FetchSurahsDataSuccess(this.surahs);
}

class SwitchPageState extends FetchSurahsDataState {}
