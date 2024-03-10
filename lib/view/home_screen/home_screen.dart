// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:uber_clone/core/constants/color_constant.dart';
import 'package:uber_clone/core/constants/image_constant.dart';
import 'package:uber_clone/view/global_widgets/services_widget.dart';
import 'package:uber_clone/view/home_screen/home_widgets/last_trip_widget.dart';
import 'package:uber_clone/view/home_screen/home_widgets/search_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              ServicesWidget(),
              SizedBox(
                height: 150,
                child: PageView.builder(
                    itemCount: ImageConstants.suggestionBannerList.length,
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                // color: ColorConstant.op70Black,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(ImageConstants
                                        .suggestionBannerList[index])),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
