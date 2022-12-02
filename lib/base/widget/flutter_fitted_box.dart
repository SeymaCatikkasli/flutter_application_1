import 'package:flutter/material.dart';

class FlutterFittedBoxWidget extends StatelessWidget {
  const FlutterFittedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
       
        width: double.infinity,
        child:FittedBox(child: Text(
          'This is a pretty long text',
          style: TextStyle(color: Colors.black),
        ),),
        
      ),
    );
  }
}
