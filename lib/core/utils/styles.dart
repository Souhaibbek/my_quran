import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_quran/core/utils/colors.dart';

abstract class Styles {
  static final bigTitle30 = GoogleFonts.poppins(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: AppColors.kPrimaryColor,
  );
  static final bigTitleSSurah30 = GoogleFonts.amiri(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: AppColors.kPrimaryColor,
  );
  static final hintText15 = GoogleFonts.poppins(
      fontSize: 15, fontWeight: FontWeight.normal, color: AppColors.kGreyColor);
  static final bigDarkTextBold = GoogleFonts.poppins(
      fontSize: 36, fontWeight: FontWeight.bold, color: AppColors.kDarkColor);
  static final title16W700 = GoogleFonts.poppins(
      fontSize: 16, fontWeight: FontWeight.w700, color: AppColors.kBlackColor);
  static final textPurplew500 = GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.kSecondaryColor);
  static final detailsTextw500 = GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: AppColors.kDetailsColor);
  static final surahTitle = GoogleFonts.amiri(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: AppColors.kSurahTitleColor);
  static final ayahTextAr = GoogleFonts.amiri(
      fontSize: 18, fontWeight: FontWeight.w700, color: AppColors.kAyahColor);
  static final ayahTextEn = GoogleFonts.poppins(
      fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.kAyahColor);
  static final blackSurahName = GoogleFonts.poppins(
      fontSize: 15, fontWeight: FontWeight.w400, color: AppColors.kBlackColor);
  static final hintSplash15 = GoogleFonts.amiri(
      fontSize: 15, fontWeight: FontWeight.normal, color: AppColors.kGreyColor);
}
