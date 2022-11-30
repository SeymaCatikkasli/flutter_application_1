import 'package:flutter/material.dart';

class VerticalSpecialDivider extends StatelessWidget {
  final Color color;
  final double height;
  const VerticalSpecialDivider({Key? key, required this.color,required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 2, //DİVİDER
        height:height ,
        decoration:  BoxDecoration(color:color,));
  }
}
