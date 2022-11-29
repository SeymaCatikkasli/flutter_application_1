import 'package:flutter/material.dart';

class PrimaryImage extends StatelessWidget {
  final String imageUrl;
  const PrimaryImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      width: MediaQuery.of(context).size.width /4,
      height: MediaQuery.of(context).size.height / 2,
    );
  }
}
