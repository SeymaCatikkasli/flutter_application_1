import 'package:flutter/material.dart';

import '../../profile/widget/input_textile.dart';

class ChartPage extends StatelessWidget {
  const ChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 220, horizontal: 50),
            child: const MyWidget(),
            
          ),
        ],
      ),
    );
  }
}
