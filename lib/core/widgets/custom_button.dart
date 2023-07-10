import 'package:flutter/material.dart';
import 'package:my_quran/core/utils/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.backgroundColor = AppColors.kPrimaryColor,
    this.textColor,
    required this.text,
    this.fontSize = 10,
    this.height = 37,
    this.radius = 24,
    this.borderColor,
    this.width = 181,
    this.onPressed,
  });
  final String text;
  final double height;
  final double width;
  final double radius;
  final Color backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  final double fontSize;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: borderColor ?? AppColors.kPrimaryColor,
            ),
            borderRadius: BorderRadius.circular(
              radius,
            ),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
              color: textColor ?? AppColors.kWhiteColor,
              fontSize: fontSize,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
