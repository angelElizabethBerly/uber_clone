// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:uber_clone/view/my_flutter_app_icons.dart';
import 'package:uber_clone/core/constants/color_constant.dart';
import 'package:uber_clone/view/plan_your_ride_screen/plan_your_ride_screen.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PlanYourRideScreen(),
              ));
        },
        decoration: InputDecoration(
            filled: true,
            fillColor: ColorConstant.op10Black,
            enabledBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none),
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search),
            hintText: "Where to?",
            hintStyle: TextStyle(
                fontFamily: "UberMove",
                fontSize: 20,
                fontWeight: FontWeight.w600),
            suffixIcon: ElevatedButton.icon(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(ColorConstant.primaryWhite)),
                onPressed: () {},
                icon: Icon(MyFlutterApp.icon_time),
                label: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Now",
                        style: TextStyle(fontFamily: "UberMove", fontSize: 15)),
                    SizedBox(width: 10),
                    Icon(MyFlutterApp.icon_arrow)
                  ],
                ))),
      ),
    );
    //  Container(
    //     padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    //     decoration: BoxDecoration(
    //         color: ColorConstant.op4Black,
    //         borderRadius: BorderRadius.circular(30)),
    //     child: Row(
    //       children: [
    //         Icon(Icons.search),
    //         SizedBox(width: 10),
    //         Text(
    //           "Where to?",
    //           style: TextStyle(
    //               fontFamily: "UberMove",
    //               fontSize: 20,
    //               fontWeight: FontWeight.w600),
    //         ),
    //         Spacer(),
    // ElevatedButton.icon(
    //     style: ButtonStyle(
    //         backgroundColor:
    //             MaterialStatePropertyAll(ColorConstant.primaryWhite)),
    //     onPressed: () {},
    //     icon: Icon(MyFlutterApp.icon_time),
    //     label: Row(
    //       children: [
    //         Text("Now",
    //             style: TextStyle(fontFamily: "UberMove", fontSize: 15)),
    //         SizedBox(width: 10),
    //         Icon(MyFlutterApp.icon_arrow)
    //       ],
    //     ))
    //       ],
    //     ));
  }
}
