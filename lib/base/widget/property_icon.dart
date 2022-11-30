import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  final IconData iconProperty;
  final Color? iconColor;
  final double? iconSize ; 
  const MyIcon({super.key, required this.iconProperty,this.iconColor=Colors.grey,this.iconSize=18});

  @override
  Widget build(BuildContext context) {
    return Icon(iconProperty,color: iconColor,size: iconSize,);
  }
}