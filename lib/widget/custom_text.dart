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
  FontWeight? weight = FontWeight.w500;

  CustomText({
    super.key,
    required this.title,
    this.textAlign,
    required this.fontSize,
    this.wordSpace,
    this.letterSpace,
    this.color,
    this.margin,
    this.weight
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
          fontWeight: weight,
          fontSize: fontSize,
          wordSpacing: wordSpace,
          letterSpacing: letterSpace,
          color: color,
        ),
      ),
    );
  }
}
