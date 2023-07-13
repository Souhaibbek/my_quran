import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_quran/features/home/presentation/manager/fetch_ayahs_cubit/fetch_ayahs_data_cubit.dart';
import 'package:my_quran/features/home/presentation/views/widgets/surah_details_view_body.dart';

class SurahDetailsView extends StatefulWidget {
  const SurahDetailsView({super.key, required this.numberOfSurah});
  final int numberOfSurah;

  @override
  State<SurahDetailsView> createState() => _SurahDetailsViewState();
}

class _SurahDetailsViewState extends State<SurahDetailsView> {
  @override
  void initState() {
    BlocProvider.of<FetchAyahsDataCubit>(context)
        .fetchAyahsData(widget.numberOfSurah);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SurahDetailsViewBody(),
      ),
    );
  }
}
