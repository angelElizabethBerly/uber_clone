// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:uber_clone/core/constants/color_constant.dart';
import 'package:uber_clone/core/constants/image_constant.dart';
import 'package:uber_clone/view/choose_a_ride_screen/widgets/bottom_sheet_widget.dart';

class ChooseARideScreen extends StatefulWidget {
  const ChooseARideScreen({super.key});

  @override
  State<ChooseARideScreen> createState() => _ChooseARideScreenState();
}

class _ChooseARideScreenState extends State<ChooseARideScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorConstant.primaryWhite,
        shape: CircleBorder(),
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back, size: 30),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
      body: Column(
        children: [
          Container(
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(ImageConstants.mapPng))),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(Icons.money),
                SizedBox(width: 10),
                Text("Cash", style: TextStyle(fontFamily: "UberMove")),
                Spacer(),
                Icon(Icons.arrow_forward_ios, size: 15)
              ],
            ),
            SizedBox(height: 25),
            Container(
                decoration: BoxDecoration(
                    color: ColorConstant.primaryBlack,
                    borderRadius: BorderRadius.circular(5)),
                height: 50,
                width: double.infinity,
                child: Center(
                  child: Text(
                    "Choose Uber Auto",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "UberMove",
                        color: ColorConstant.primaryWhite),
                  ),
                ))
          ],
        ),
      ),
      bottomSheet: BottomSheet(
          onClosing: () {},
          builder: (context) => Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "16% promotion applied",
                      style: TextStyle(fontFamily: "UberMove", fontSize: 15),
                    ),
                    Column(
                        children:
                            List.generate(4, (index) => BottomSheetWidget())),
                  ],
                ),
              )),
    );
  }
}
