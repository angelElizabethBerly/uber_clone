import 'package:flutter/material.dart';
import 'package:uber_clone/core/constants/color_constant.dart';
import 'package:uber_clone/core/constants/image_constant.dart';

class ServicesWidget extends StatelessWidget {
  const ServicesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> rideList = [
      ImageConstants.uberRidePng,
      ImageConstants.uberReservePng,
      ImageConstants.uberIntercityPng,
      ImageConstants.uberRentalsPng
    ];
    List<String> rideName = ["Ride", "Reserve", "Intercity", "Rental"];
    return Row(
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
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 3),
                            Image.asset(rideList[index]),
                            SizedBox(height: 5),
                            Text(
                              rideName[index],
                              style: TextStyle(
                                  fontFamily: "UberMove", fontSize: 14),
                            )
                          ],
                        ),
                      ),
                    ),
                    Visibility(
                      visible: (index <= 1) ? true : false,
                      child: Positioned(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 3, horizontal: 8),
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
                )));
  }
}
