part of 'fetch_ayahs_data_cubit.dart';

abstract class FetchAyahsDataState {}

class FetchAyahsDataInitial extends FetchAyahsDataState {}

class FetchAyahsDataLoading extends FetchAyahsDataState {}

class FetchAyahsDataFailure extends FetchAyahsDataState {
  final String errMsg;

  FetchAyahsDataFailure(this.errMsg);
}

class FetchAyahsDataSuccess extends FetchAyahsDataState {
  final List<AyahEntity> Ayahs;

  FetchAyahsDataSuccess(this.Ayahs);
}
