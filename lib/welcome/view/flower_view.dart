import 'package:flutter/material.dart';
import 'package:flutter_application_1/welcome/view/item.dart';

class FlowerView extends StatefulWidget {
  @override
  State<FlowerView> createState() => _FlowerViewState();
}

class _FlowerViewState extends State<FlowerView> {
  var model = FlowersModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(model.list.length);
          print(model.list.length);
          print(model.list.length);
          setState(() { 
            model.addFlower(Flower("red", "daisy"));
          });
          
        },
      ),
      body: ListView.builder(
        itemCount: model.list.length,
        itemBuilder: (context, index) => Text(model.list[index].color),
      ),
    );
  }
}
