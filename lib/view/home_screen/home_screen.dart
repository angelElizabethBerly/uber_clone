// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:uber_clone/core/constants/color_constant.dart';
import 'package:uber_clone/core/constants/image_constant.dart';
import 'package:uber_clone/view/home_screen/home_widgets/last_trip_widget.dart';
import 'package:uber_clone/view/home_screen/home_widgets/search_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> rideList = [
      ImageConstants.uberRidePng,
      ImageConstants.uberReservePng,
      ImageConstants.uberIntercityPng,
      ImageConstants.uberRentalsPng
    ];
    List<String> rideName = ["Ride", "Reserve", "Intercity", "Rental"];
    return Scaffold(
      appBar: AppBar(
          title: Text("Uber",
              style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'UberMove'))),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SearchWidget(),
              SizedBox(height: 15),
              LastTripWidget(
                location: 'Kangarapady Junction',
                description: '29V3+2PV, Kangarappady, Kochi, Kerala',
              ),
              Divider(color: ColorConstant.op10Black),
              LastTripWidget(
                  location: "Kalamassery Metro Station",
                  description: "NH544, North Kalamassery, Kalamassery"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Suggestions",
                    style: TextStyle(
                        fontFamily: "UberMove",
                        fontWeight: FontWeight.w600,
                        fontSize: 22),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "See All",
                        style: TextStyle(
                            fontFamily: "UberMove",
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ))
                ],
              ),
              SizedBox(height: 18),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(
                      4,
                      (index) => Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              SizedBox(height: 130),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: ColorConstant.op4Black),
                                height: 98,
                                width: 75,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(height: 3),
                                      Image.asset(rideList[index]),
                                      SizedBox(height: 5),
                                      Text(
                                        rideName[index],
                                        style: TextStyle(
                                            fontFamily: "UberMove",
                                            fontSize: 14),
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
                                        borderRadius:
                                            BorderRadius.circular(20)),
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
              SizedBox(
                height: 150,
                child: PageView.builder(
                    itemBuilder: (context, index) => Container(
                          decoration: BoxDecoration(
                              color: index.isEven
                                  ? ColorConstant.primaryGreen
                                  : ColorConstant.primaryBlack,
                              borderRadius: BorderRadius.circular(20)),
                        )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
