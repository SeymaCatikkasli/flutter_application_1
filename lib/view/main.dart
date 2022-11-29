import 'package:flutter/material.dart';

import '../base/main/main_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorSchemeSeed: const Color.fromARGB(255, 158, 198, 218),
          scaffoldBackgroundColor: Colors.white),
      home: const MainLayout(),
    );
  }
}
