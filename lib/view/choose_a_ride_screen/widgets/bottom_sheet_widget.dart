// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:uber_clone/core/constants/color_constant.dart';
import 'package:uber_clone/core/constants/image_constant.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      child: Row(
        // mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(ImageConstants.autoIconPng))),
          ),
          SizedBox(width: 20),
          RichText(
              text: TextSpan(
                  text: "Uber Auto",
                  style: TextStyle(
                      fontFamily: "UberMove",
                      color: ColorConstant.primaryBlack,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                  children: [
                TextSpan(
                    text: "\n10:42pm . 5 min away",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w100))
              ])),
          Spacer(),
          Text("₹129.16",
              style: TextStyle(
                  fontFamily: "UberMove",
                  color: ColorConstant.primaryBlack,
                  fontSize: 18,
                  fontWeight: FontWeight.w600))
        ],
      ),
    );
  }
}
