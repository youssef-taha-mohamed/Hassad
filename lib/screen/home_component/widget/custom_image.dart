import 'package:flutter/material.dart';


class CustomImage extends StatelessWidget {
  // final String titleOne;
  // final String titleTwo;
  // final String buttonText;
  // final void Function() function;
  // final Widget widget;

  const CustomImage({
    super.key,
    // required this.titleOne,
    // required this.titleTwo,
    // required this.buttonText,
    // required this.function,
    // required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          clipBehavior: Clip.hardEdge,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.asset(
            'assets/images/worshipers1.jpg',
            width: MediaQuery.of(context).size.width*0.29,
            height: MediaQuery.of(context).size.width*0.36,
            scale: 5,
            fit: BoxFit.fill,
          ),
        ),
        Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
          ),
          child: Image.asset(
            'assets/images/worshipers2.jpg',
            width: MediaQuery.of(context).size.width*0.29,
            height: MediaQuery.of(context).size.width*0.36,
            scale: 5,
            fit: BoxFit.fill,
          ),
        ),
        Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
          ),
          child: Image.asset(
            'assets/images/worshipers3.jpg',
            fit: BoxFit.fitHeight,
            width: MediaQuery.of(context).size.width*0.29,
            height: MediaQuery.of(context).size.width*0.36,
            scale: 5,
          ),
        ),
      ],
    );
  }

  Container buildContainer(BuildContext context) {
    return Container(
   // margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    //width: MediaQuery.of(context).size.width *0.15,
    width: 150,
    height: MediaQuery.of(context).size.height * 0.15,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Image.asset(
      'assets/images/worshipers2.jpg',
      width: MediaQuery.of(context).size.width*0.15,
      //height: 200,
      scale: 4,
    ),
  );
  }
}
