import 'package:flutter/material.dart';

class VerticalSpecialDivider extends StatelessWidget {
  const VerticalSpecialDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(width: 4, //DİVİDER
    height: 27,
    decoration: const BoxDecoration(
      color: Color(0xffdddddd)
    ));
  }
}
