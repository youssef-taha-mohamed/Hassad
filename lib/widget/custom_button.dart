import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final void Function() function;
  final String title;
  final double width;
  final double height;
  final double padding;
  final IconData? icon;
  final double fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final MainAxisAlignment? mainAxisAlignment;
  final Color? backGround;
  final Color? textColor;
  final Color? iconColor;

  const CustomButton({
    super.key,
    required this.function,
    required this.title,
    required this.width,
    required this.height,
    required this.padding,
    required this.icon,
    required this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.mainAxisAlignment,
    this.backGround, this.textColor, this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: backGround,
              minimumSize: Size(width, height),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              )),
          onPressed: function,
          child: Row(
            mainAxisAlignment: mainAxisAlignment!,
            children: [
              Text(
                title,
                textAlign: textAlign,
                style: GoogleFonts.tajawal(
                  fontWeight: fontWeight,
                  fontSize: fontSize,
                  letterSpacing: 1,
                  color: textColor,
                ),
              ),
              Icon(
                icon,
                color: iconColor,
              ),
            ],
          )),
    );
  }
}
