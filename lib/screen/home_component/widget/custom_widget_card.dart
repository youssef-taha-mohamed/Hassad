import 'package:flutter/material.dart';
import 'package:hased/moduls/i_key.dart';
import 'package:hased/screen/home_component/widget/custom_circular_container.dart';
import 'package:hased/widget/custom_text.dart';

import '../../../const/color.dart';
import '../../../widget/custom_text_with_column.dart';

class CustomWidgetCard extends StatelessWidget {
  // final String titleOne;
  // final String titleTwo;
  // final String buttonText;
  // final void Function() function;
  // final Widget widget;

  const CustomWidgetCard({
    super.key,
    // required this.titleOne,
    // required this.titleTwo,
    // required this.buttonText,
    // required this.function,
    // required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.57,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomText(
            title: TKeys.agricultural.translate(context),
            fontSize: 20,
            weight: FontWeight.bold,
          ),
          SizedBox(
            height: 10,
          ),
          CircularContainer(
            width: 110,
            height: 110,
            borderColor: Colors.black12,
            backgroundColor: Colors.white,
            widget: CustomText(
              title: TKeys.acre2.translate(context),
              fontSize: 23,
              textAlign: TextAlign.center,
              weight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          CustomText(
            title: TKeys.land.translate(context),
            fontSize: 20,
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextWithColumn(
            textOne: TKeys.based.translate(context),
            textTwo: TKeys.total.translate(context),
            fontSize: 22,
            axis: CrossAxisAlignment.center,
            align: TextAlign.center,
            fontSizeOne: 20,
            fontWeightOne: FontWeight.w500,
            fontWeightTwo: FontWeight.bold,
            space: -3,
          ),
          SizedBox(
            height: 25,
          ),
          CircularContainer(
            width: 110,
            height: 110,
            borderColor: Colors.white,
            backgroundColor: mainColor,
            widget: CustomText(
              title: TKeys.tons2.translate(context),
              fontSize: 23,
              textAlign: TextAlign.center,
              weight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 25,),
          CustomText(title: TKeys.fromSunflower.translate(context), fontSize: 20,weight: FontWeight.w500,)
        ],
      ),
    );
  }
}
