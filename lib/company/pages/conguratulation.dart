import 'package:flutter/material.dart';
import 'package:hased/const/color.dart';
import 'package:hased/moduls/i_key.dart';
import 'package:hased/widget/custom_button.dart';
import 'package:hased/widget/custom_text_with_column.dart';

class Congratulation extends StatelessWidget {
  const Congratulation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Card(
            margin: const EdgeInsets.all(20),
            color: backgroundColor,
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Spacer(),
                  CustomTextWithColumn(
                    textOne: TKeys.congratulation.translate(context),
                    textTwo: TKeys.request.translate(context),
                    fontSize: 22,
                    axis: CrossAxisAlignment.center,
                    align: TextAlign.center,
                  ),
                  Spacer(),
                  const Icon(
                    Icons.check_circle,
                    weight: 20,
                    size: 170,
                    color: Colors.green,
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          SizedBox(height: 60,),
          CustomButton(
            function: () {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil('/playStore', (Route<dynamic> route) => false);
            },
            title: TKeys.visitStore.translate(context),
            width: MediaQuery.of(context).size.width,
            height: 45,
            padding: 18.0,
            icon: null,
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ],
      ),
    );
  }
}
