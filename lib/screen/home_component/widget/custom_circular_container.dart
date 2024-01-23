import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  final double width;
  final double height;
  final Color borderColor;
  final Color backgroundColor;
  final Widget widget;

  const CircularContainer(
      {super.key,
      required this.width,
      required this.height, required this.borderColor, required this.backgroundColor, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
        ),
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      child: widget
    );
  }
}
