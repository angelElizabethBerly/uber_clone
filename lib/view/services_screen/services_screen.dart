// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:uber_clone/core/constants/color_constant.dart';
import 'package:uber_clone/core/constants/image_constant.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> rideList = [
      ImageConstants.uberRidePng,
      ImageConstants.uberReservePng,
      ImageConstants.uberIntercityPng,
      ImageConstants.uberRentalsPng,
      ImageConstants.uberRidePng,
    ];
    List<String> rideName = ["Ride", "Reserve", "Intercity", "Rental", "Ride"];
    return Scaffold(
      appBar: AppBar(
          title: Text("Services",
              style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'UberMove'))),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Go anywhere, get anything",
                style: TextStyle(
                    fontFamily: "UberMove",
                    fontSize: 18,
                    fontWeight: FontWeight.w600)),
            SizedBox(height: 10),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                    2,
                    (index) => Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            // SizedBox(height: 130),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: ColorConstant.op4Black),
                              height: 100,
                              width: 170,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Image.asset(rideList[index],
                                          scale: index == 1 ? 3 : 1),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        rideName[index],
                                        style: TextStyle(
                                            fontFamily: "UberMove",
                                            fontSize: 14),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Visibility(
                              visible: (index <= 1) ? true : false,
                              child: Positioned(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 3, horizontal: 8),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.primaryGreen,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Text(
                                    "Promo",
                                    style: TextStyle(
                                        color: ColorConstant.primaryWhite,
                                        fontFamily: "UberMove",
                                        fontSize: 14),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ))),
            SizedBox(height: 20),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                    3,
                    (index) => Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            SizedBox(height: 130),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: ColorConstant.op4Black),
                              height: 98,
                              width: 110,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Image.asset(rideList[index + 2]),
                                    Text(
                                      rideName[index + 2],
                                      style: TextStyle(
                                          fontFamily: "UberMove", fontSize: 14),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )))
          ],
        ),
      ),
    );
  }
}
