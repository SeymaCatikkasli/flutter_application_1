import 'package:flutter/material.dart';

class PersonImageWidget extends StatelessWidget {
  const PersonImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      margin: const EdgeInsets.only(
        left: 9,
        right: 9,
      ),
      decoration: BoxDecoration(
        color: const Color(0xffc4c4c4),
        borderRadius: BorderRadius.circular(18),
      ),
    );
  }
}
