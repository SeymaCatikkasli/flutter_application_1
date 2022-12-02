import 'package:flutter/material.dart';

class FranctionalWidget extends StatelessWidget {
  const FranctionalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.blueGrey,
          height: 50,
          width: 50,
        ),
         FractionalTranslation(translation: const Offset(1,-1),
        child: Container(
          color: Colors.purpleAccent,
          height: 50,
          width: 50,
        ),),
         FractionalTranslation(translation: const Offset(1, -1),
        child: Container(color: Color.fromARGB(255, 2, 11, 26),height: 50,width: 50,),),
        
      ],
    );
  }
}