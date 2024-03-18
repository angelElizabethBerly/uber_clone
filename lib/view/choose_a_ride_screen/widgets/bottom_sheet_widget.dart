// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:uber_clone/core/constants/color_constant.dart';
import 'package:uber_clone/view/dummy_db.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget(
      {super.key, required this.index, required this.selectedRideIndex});
  final int index;
  final int? selectedRideIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          border: selectedRideIndex == index ? Border.all(width: 2) : null,
          borderRadius: BorderRadius.circular(20)),
      height: 80,
      width: double.infinity,
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(DummyDB.chooseRideList[index]["image"]))),
          ),
          SizedBox(width: 20),
          RichText(
              text: TextSpan(
                  text: DummyDB.chooseRideList[index]["ride"],
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
          Text("₹${DummyDB.chooseRideList[index]["cost"]}",
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
