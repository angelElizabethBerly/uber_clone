// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:uber_clone/core/constants/color_constant.dart';
import 'package:uber_clone/view/home_screen/home_screen.dart';
import 'package:uber_clone/view/my_flutter_app_icons.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int selectedIndex = 0;
  List screenList = [
    HomeScreen(),
    Container(color: Colors.yellow),
    Container(color: Colors.teal),
    Container(color: Colors.red)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 35,
          selectedItemColor: ColorConstant.primaryBlack,
          unselectedItemColor: ColorConstant.op60Black,
          currentIndex: selectedIndex,
          onTap: (value) {
            selectedIndex = value;
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(MyFlutterApp.icon_home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(MyFlutterApp.icon_services), label: "Services"),
            BottomNavigationBarItem(
                icon: Icon(MyFlutterApp.icon_activity), label: "Activity"),
            BottomNavigationBarItem(
                icon: Icon(MyFlutterApp.icon_account), label: "Account"),
          ]),
      body: screenList[selectedIndex],
    );
  }
}
