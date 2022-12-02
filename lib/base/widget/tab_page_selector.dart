import 'package:flutter/material.dart';

List<Widget> widgets = const [
  Icon((Icons.home)),
  Icon(Icons.alarm),
  Icon(Icons.settings),
  Icon((Icons.person)),
];

class TabPageSelector extends StatefulWidget {
  const TabPageSelector({super.key});

  @override
  State<TabPageSelector> createState() => _TabPageSelectorState();
}

class _TabPageSelectorState extends State<TabPageSelector>
    with SingleTickerProviderStateMixin {
  late final TabController controller;
  int _index = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(
        length: widgets.length, vsync: this, initialIndex: _index);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          TabBarView(
            controller: controller,
            children: widgets,
          ),
          Positioned(
            bottom: 40,
            child: TabPageSelector(
              controller: controller,
              color: Colors.black38,
            ),
          ),
        ],
      ),
      floatingActionButton: const ButtonBar(
        children: [
          FloatingActionButton.small(
            onPressed: () {
              (_index != widgets.length - 1) ? _index++ : _index = 0;
              controller.animateTo(_index);
            },
            hoverElevation: 0,
            elevation: 0,
            child: Icon(Icons.navigate_next),
          )
        ],
      ),
    );
  }
}
