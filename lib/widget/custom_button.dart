import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hased/const/color.dart';

class CustomButton extends StatelessWidget {
  final void Function() function;
  final String title;
  final double width;
  final double height;
  final double padding;
  final IconData? icon;
  final double fontSize;
  final FontWeight? fontWeight;

  const CustomButton({
    super.key,
    required this.function,
    required this.title,
    required this.width,
    required this.height,
    required this.padding,
    required this.icon, required this.fontSize, this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
            backgroundColor: mainColor,
            minimumSize: Size(width, height),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            )),
        onPressed: function,
        icon: Icon(
          icon,
          color: Colors.white,
        ),
        label: Text(
          title,
          textAlign: TextAlign.center,
          style: GoogleFonts.tajawal(
            fontWeight: fontWeight,
            fontSize: fontSize,
            letterSpacing: 1,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
