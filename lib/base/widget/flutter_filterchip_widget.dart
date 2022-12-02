import 'package:flutter/material.dart';

class FilterChipWidget extends StatefulWidget {
  const FilterChipWidget({super.key});

  @override
  State<FilterChipWidget> createState() => _FilterChipWidgetState();
}

class _FilterChipWidgetState extends State<FilterChipWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FilterChip(
        label: const Text('Seçiniz'),
        selected: isSelected,
        selectedColor: Colors.lightGreenAccent,
        backgroundColor: Colors.brown,
        autofocus: true,
        onSelected: (bool value) {
          setState(() {
            isSelected = !isSelected;
          });
        },
        avatar: const Text('F'),
      ),
    );
  }
}
