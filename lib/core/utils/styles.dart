import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_quran/core/utils/colors.dart';
import 'package:my_quran/core/utils/constants.dart';
import 'package:sizer/sizer.dart';

abstract class Styles {
  static final bigTitle30 = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.w700,
    fontFamily: kPoppins,
    color: AppColors.kPrimaryColor,
  );
  static final bigTitleSSurah30 = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.bold,
    fontFamily: kAmiri,
    color: AppColors.kPrimaryColor,
  );
  static final hintText15 = TextStyle(
      fontSize: 15.sp,
      fontWeight: FontWeight.w400,
      fontFamily: kPoppins,
      color: AppColors.kGreyColor);
  static final bigDarkTextBold = TextStyle(
      fontSize: 36.sp,
      fontFamily: kPoppins,
      fontWeight: FontWeight.w700,
      color: AppColors.kDarkColor);
  static final title16W700 = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w700,
      fontFamily: kPoppins,
      color: AppColors.kBlackColor);
  static final textPurplew500 = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
      fontFamily: kPoppins,
      color: AppColors.kSecondaryColor);
  static final detailsTextw500 = TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w500,
      fontFamily: kPoppins,
      color: AppColors.kDetailsColor);
  static final surahTitle = TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.w700,
      fontFamily: kAmiri,
      color: AppColors.kSurahTitleColor);
  static final ayahTextAr = TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.w700,
      fontFamily: kAmiri,
      color: AppColors.kAyahColor);
  static final ayahTextEn = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      fontFamily: kPoppins,
      color: AppColors.kAyahColor);
  static final blackSurahName = TextStyle(
      fontSize: 15.sp,
      fontWeight: FontWeight.w400,
      fontFamily: kPoppins,
      color: AppColors.kBlackColor);
  static final hintSplash15 = TextStyle(
      fontSize: 15.sp,
      fontWeight: FontWeight.w400,
      fontFamily: kAmiri,
      color: AppColors.kGreyColor);
  static final details14w500 = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
      fontFamily: kPoppins,
      color: AppColors.kWhiteColor);
}
