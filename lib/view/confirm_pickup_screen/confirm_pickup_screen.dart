// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:uber_clone/core/constants/color_constant.dart';
import 'package:uber_clone/core/constants/image_constant.dart';
import 'package:uber_clone/view/global_widgets/custom_button.dart';
import 'package:uber_clone/view/process_request_screen/process_request_screen.dart';

class ConfirmPickupScreen extends StatelessWidget {
  const ConfirmPickupScreen({super.key});

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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: AssetImage(ImageConstants.mapPng))),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Confirm the pickup spot",
              style: TextStyle(fontFamily: "UberMove", fontSize: 18),
            ),
            Divider(),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Vineyard Villa",
                    style: TextStyle(fontFamily: "UberMove")),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(ColorConstant.op10Black)),
                    onPressed: () {},
                    child: Text("Search",
                        style: TextStyle(
                            fontFamily: "UberMove",
                            color: ColorConstant.primaryBlack)))
              ],
            ),
            SizedBox(height: 15),
            InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProcessRequestScreen()));
                },
                child: CustomButton(buttonText: "Confirm Pickup"))
          ],
        ),
      ),
    );
  }
}
