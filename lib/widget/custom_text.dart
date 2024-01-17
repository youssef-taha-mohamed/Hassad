import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String title;
  final TextAlign? textAlign;
  final double fontSize;
  final EdgeInsets? margin;
  final double? wordSpace;
  final double? letterSpace;
  Color? color = Colors.black;

  CustomText({
    super.key,
    required this.title,
    this.textAlign,
    required this.fontSize,
    this.wordSpace,
    this.letterSpace,
    this.color,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Text(
        title,
        textAlign: textAlign,
        softWrap: true,
        style: GoogleFonts.tajawal(
          fontWeight: FontWeight.w500,
          fontSize: fontSize,
          wordSpacing: wordSpace,
          letterSpacing: letterSpace,
          color: color,
        ),
      ),
    );
  }
}
