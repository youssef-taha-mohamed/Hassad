import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/color.dart';

class CustomTextForm extends StatelessWidget {
  final String hintText;
  final int? maxLines;
  final TextEditingController myController;
  final String? Function(String?)? valid;
  final Widget? icon;
  final Widget? iconPrefix;
  final Color? colorBord;
  final String fieldName;
  final Widget? iconOption;

  const CustomTextForm({
    super.key,
    required this.fieldName,
    required this.hintText,
    required this.myController,
    required this.valid,
    required this.maxLines,
    required this.icon,
    this.colorBord,
    this.iconPrefix,
    this.iconOption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  fieldName,
                  style: GoogleFonts.tajawal(
                      fontSize: 22,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),
                iconOption!,
              ],
            ),
          ),
          TextFormField(
            maxLines: maxLines,
            validator: valid,
            keyboardType: TextInputType.emailAddress,
            controller: myController,
            decoration: InputDecoration(
              helperText: '',
              suffixIcon: icon,
              prefixIcon: iconPrefix,
              suffixIconColor: mainColor,
              hintText: hintText,
              hintStyle: GoogleFonts.tajawal(
                fontSize: 18,
                color: Colors.grey,
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: mainColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
                borderSide: BorderSide(color: colorBord!),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
