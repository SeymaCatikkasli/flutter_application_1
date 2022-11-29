import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/color/colors.dart';
import 'package:flutter_application_1/view/chart/view/chart.dart';
import 'package:flutter_application_1/view/profile/view/profile.dart';

import '../../view/welcome/welcome.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      log('Index: $_selectedIndex');
      print(_selectedIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigation(),
      body: (() {
        switch (_selectedIndex) {
          case 0:
          return   const Welcome();
             case 1:
           return  const ChartPage();
             case 2:
           return  const ProfilePage();
          default:
        }
      }()),
    );
  }

  BottomNavigationBar bottomNavigation() {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.home_outlined),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.calendar_month_outlined),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.pie_chart_outline),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: AppColors.mainColor,
      onTap: _onItemTapped,
    );
  }
}
