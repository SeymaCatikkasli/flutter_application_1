import 'package:flutter/material.dart';

class RectangleWidget extends StatelessWidget {
  const RectangleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     height: 30,
      width: 200, 
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.all(color: Colors.grey, width: 1),
        
      ),
      child: TextFormField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
            color: Color.fromARGB(255, 115, 206, 162),
          ),
          )
        ),
      ),
    );
  }
}
