import 'package:flutter/material.dart';
final flowerNotify=MyFlowerNotify(FlowersModel());
class MyFlowerNotify extends ValueNotifier<FlowersModel>{
  MyFlowerNotify(FlowersModel value):super(value);
  void addFlower(Flower flower){
value.list.add(flower);
notifyListeners();
}
}
class FlowersModel{

final List<Flower>list=[];


int get totalFlower=> list.length;

}
class Flower{
  final String color;
  final String type;

  Flower (this.color,this.type);
}