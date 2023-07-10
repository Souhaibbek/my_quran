import 'package:flutter/material.dart';
import 'package:my_quran/features/home/presentation/views/widgets/surah_details_view_body.dart';

class SurahDetailsView extends StatelessWidget {
  const SurahDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SurahDetailsViewBody(),
      ),
    );
  }
}
