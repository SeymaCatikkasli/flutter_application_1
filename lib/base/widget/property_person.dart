import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String data;
  final double? fontSize;
  final Color? color;
  final FontWeight fontWeight;
  const MyText({Key? key, required this.data, this.fontSize = 20,this.color=Colors.black,this.fontWeight=FontWeight.w500})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(data,
        style: TextStyle(
          fontFamily: 'Ubuntu',
          color:color,
          fontSize: fontSize,
          fontWeight:fontWeight,
          fontStyle: FontStyle.normal,
        ));
  }
}
