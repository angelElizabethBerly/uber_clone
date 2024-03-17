import 'package:flutter/material.dart';
import 'package:uber_clone/core/constants/color_constant.dart';
import 'package:uber_clone/view/bottom_navigation_screen/bottom_navigation_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => BottomNavigationScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryBlack,
      body: Center(
          child: Text("Uber",
              style: TextStyle(
                  fontFamily: "UberMove",
                  fontSize: 60,
                  color: ColorConstant.primaryWhite))),
    );
  }
}
