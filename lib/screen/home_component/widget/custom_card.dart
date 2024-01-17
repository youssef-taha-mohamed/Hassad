import 'package:flutter/material.dart';
import 'package:hased/const/color.dart';
import 'package:hased/widget/custom_button.dart';
import 'package:hased/widget/custom_text_with_column.dart';

class CustomCard extends StatelessWidget {
  final String titleOne;
  final String titleTwo;
  final String buttonText;
  final void Function() function;
  final Widget widget;

  const CustomCard({
    super.key,
    required this.titleOne,
    required this.titleTwo,
    required this.buttonText,
    required this.function,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.36,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          SizedBox(height: 10,),
          CircleAvatar(
            backgroundColor: mainColor,
            minRadius: 60,
            child: widget,
          ),
          SizedBox(height: 20,),
          CustomTextWithColumn(
            textOne: titleOne,
            textTwo: titleTwo,
            fontSize: 19,
            axis: CrossAxisAlignment.center,
            align: TextAlign.center,
          ),
          SizedBox(height: 25,),
          CustomButton(
            function: function,
            title: buttonText,
            width: MediaQuery.of(context).size.width,
            height: 45,
            padding: 18,
            icon: null,
            fontSize: 23,
            fontWeight: FontWeight.w900,
          ),
          SizedBox(height: 25,),
        ],
      ),
    );
  }
}
