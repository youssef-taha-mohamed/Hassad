import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextWithColumn extends StatelessWidget {
  final String textOne;
  final String textTwo;
  final double fontSize;
  final double? fontSizeOne;
  final double? space;
  final CrossAxisAlignment axis;
  final TextAlign align;
  final FontWeight? fontWeightOne;
  final FontWeight? fontWeightTwo;

  const CustomTextWithColumn({
    super.key,
    required this.textOne,
    required this.textTwo,
    required this.fontSize,
    required this.axis,
    required this.align, this.space, this.fontSizeOne, this.fontWeightOne, this.fontWeightTwo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: axis,
        children: [
          Text(
            textOne,
            textAlign: TextAlign.center,
            style: GoogleFonts.tajawal(
              color: Theme.of(context).colorScheme.scrim,
              fontWeight: fontWeightOne,
              fontSize: fontSizeOne,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            textTwo,
            textAlign: align,
            style: GoogleFonts.tajawal(
              color: Theme.of(context).colorScheme.scrim,
              fontSize: fontSize,
              fontWeight: fontWeightTwo,
              wordSpacing: space
            ),
          ),
        ],
      ),
    );
  }
}
