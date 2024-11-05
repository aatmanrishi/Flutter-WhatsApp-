import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final Color containerColor;
  final double iconSize;
  final Color iconColor;
  final IconData buttonIcon;
  final BorderRadius borderRadius;

  const CustomFloatingActionButton(
      {super.key,
      required this.containerColor,
      required this.buttonIcon,
      required this.borderRadius,
      required this.iconColor,
      required this.iconSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(15),
        color: containerColor,
      ),
      child: Center(
        child: Icon(buttonIcon, color: iconColor, size: iconSize),
      ),
    );
  }
}
