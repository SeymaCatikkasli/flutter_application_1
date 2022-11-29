
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final Color? styleButton;
  final Color? backColor;
  
  const PrimaryButton(
      {super.key, required this.title, this.styleButton = Colors.lightBlue,this.backColor=Colors.deepPurple});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        // style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
        onPressed: () {},
        style: ElevatedButton.styleFrom(backgroundColor: styleButton,shadowColor: backColor ),
        child: Text(title),);
  }
}
