import 'package:flutter/material.dart';
import 'package:my_quran/core/utils/colors.dart';
import 'package:my_quran/features/home/presentation/views/widgets/adhkar/adhkar_details_view_body.dart';

class AdhkarDetailsView extends StatelessWidget {
  const AdhkarDetailsView({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kLightGreyContainerColor,
      body: AdhkarDetailsViewBody(index: index),
    );
  }
}
