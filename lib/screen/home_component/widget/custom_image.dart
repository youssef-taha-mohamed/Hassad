import 'package:flutter/material.dart';


class CustomImage extends StatelessWidget {
  final String imageOne;
  final String imageTwo;
  final String imageThree;
  // final void Function() function;
  // final Widget widget;

  const CustomImage({
    super.key,
    required this.imageOne,
    required this.imageTwo,
    required this.imageThree,
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
            imageOne,
            width: MediaQuery.of(context).size.width*0.29,
            height: MediaQuery.of(context).size.width*0.36,
            scale: 5,
            fit: BoxFit.cover,
          ),
        ),
        Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
          ),
          child: Image.asset(
            imageTwo,
            width: MediaQuery.of(context).size.width*0.29,
            height: MediaQuery.of(context).size.width*0.36,
            scale: 5,
            fit: BoxFit.cover,
          ),
        ),
        Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
          ),
          child: Image.asset(
            imageThree,
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width*0.29,
            height: MediaQuery.of(context).size.width*0.36,
            scale: 5,
          ),
        ),
      ],
    );
  }
}
