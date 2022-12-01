import 'package:flutter/material.dart';

abstract class FormStyle {
  static InputDecoration style() {
    return const InputDecoration(
      
      isCollapsed: false,
      hintMaxLines: 5,
      enabledBorder: OutlineInputBorder(
        
        borderRadius: BorderRadius.all(Radius.circular(0.0)),
        borderSide: BorderSide(
          
          width: 1,
          color: Color.fromARGB(255, 225, 224, 224),
          
          
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(0.0)),
          borderSide: BorderSide(
        width: 1,
        color: Color.fromARGB(255, 115, 206, 162),
      )),
      filled: false,
      
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 25,
      child: TextFormField(
        style: const TextStyle(fontSize: 10),
        decoration: FormStyle.style(),
      ),
    );
  }
}
