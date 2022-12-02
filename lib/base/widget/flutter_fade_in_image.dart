import 'package:flutter/material.dart';

class FadeInImageWidget extends StatelessWidget {
  const FadeInImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FadeInImage.assetNetwork(
          placeholder: 'lib/assets/ocean.jpeg',
          image: 'https://wallpaperaccess.com/full/2692164.jpg',
          fadeInCurve:Curves.easeInBack,
          ),
          
    );
  }
}
