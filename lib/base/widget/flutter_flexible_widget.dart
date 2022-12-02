import 'package:flutter/material.dart';

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Flexible(
              flex: 5,
              fit: FlexFit.tight,
              child: Container(
                height: 50,
                color: Colors.blue,
              )),
          Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: Container(
                height: 100,
                color: Colors.deepPurple,
              )),
          Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: Container(
                height: 200,
                color: Colors.amber,
              ))
        ],
      ),
    );
  }
}
