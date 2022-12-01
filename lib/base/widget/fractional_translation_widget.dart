import 'package:flutter/material.dart';

class FranctionalWidget extends StatelessWidget {
  const FranctionalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.blueGrey,
          height: 250,
          width: 150,
        ),
        const FractionalTranslation(translation: Offset(-1,2))
      ],
    );
  }
}