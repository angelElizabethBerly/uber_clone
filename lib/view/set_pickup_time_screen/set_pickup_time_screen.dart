// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:uber_clone/core/constants/color_constant.dart';
import 'package:uber_clone/view/global_widgets/custom_button.dart';

class SetPickUpTimeScreen extends StatelessWidget {
  const SetPickUpTimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.close, size: 30)),
            Text(
              "When do you want to be picked up?",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "UberMove",
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Center(
              child: Text(
                "Mon, Mar 18",
                style: TextStyle(
                    fontFamily: "UberMove",
                    fontSize: 20,
                    color: ColorConstant.op30Black),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: Text(
                "11:10 AM",
                style: TextStyle(
                    fontFamily: "UberMove",
                    fontSize: 20,
                    color: ColorConstant.op30Black),
              ),
            ),
            SizedBox(height: 20),
            ListTile(
                leading: Icon(Icons.calendar_month),
                title: Text(
                  "Choose your exact pickup time uo to 90 days in advance",
                  style: TextStyle(
                      fontFamily: "UberMove",
                      fontSize: 16,
                      color: ColorConstant.op30Black),
                )),
            SizedBox(height: 20),
            ListTile(
                leading: Icon(Icons.timer),
                title: Text(
                  "Extra wait time include to meet your ride",
                  style: TextStyle(
                      fontFamily: "UberMove",
                      fontSize: 16,
                      color: ColorConstant.op30Black),
                )),
            SizedBox(height: 20),
            ListTile(
                leading: Icon(Icons.payment),
                title: Text(
                  "Cancel at no charge up to 60 minutes in advance",
                  style: TextStyle(
                      fontFamily: "UberMove",
                      fontSize: 16,
                      color: ColorConstant.op30Black),
                )),
            SizedBox(height: 30),
            Text(
              "See more",
              style: TextStyle(
                  fontFamily: "UberMove", decoration: TextDecoration.underline),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: CustomButton(buttonText: "Set pickup time"),
      ),
    );
  }
}
