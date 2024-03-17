// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:uber_clone/core/constants/color_constant.dart';
import 'package:uber_clone/core/constants/image_constant.dart';
import 'package:uber_clone/view/dummy_db.dart';
import 'package:uber_clone/view/global_widgets/services_widget.dart';
import 'package:uber_clone/view/home_screen/home_widgets/banner_widget.dart';
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
            crossAxisAlignment: CrossAxisAlignment.start,
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
                        fontWeight: FontWeight.w700,
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
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                // color: ColorConstant.op70Black,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(DummyDB
                                        .suggestionBannerList[index]["image"])),
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 100),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      DummyDB.suggestionBannerList[index]
                                          ["title"],
                                      style: TextStyle(
                                          fontFamily: "UberMove",
                                          fontSize: 20,
                                          color: index == 0 || index == 3
                                              ? ColorConstant.primaryWhite
                                              : ColorConstant.primaryBlack)),
                                  Row(
                                    children: [
                                      Text(
                                          DummyDB.suggestionBannerList[index]
                                              ["subtitle"],
                                          style: TextStyle(
                                              fontFamily: "UberMove",
                                              fontSize: 15,
                                              color: index == 0 || index == 3
                                                  ? ColorConstant.primaryWhite
                                                  : ColorConstant
                                                      .primaryBlack)),
                                      SizedBox(width: 3),
                                      Icon(Icons.arrow_forward,
                                          size: 18,
                                          color: index == 0 || index == 3
                                              ? ColorConstant.primaryWhite
                                              : ColorConstant.primaryBlack)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )),
              ),
              SizedBox(height: 20),
              Text(
                "Commute smarter",
                style: TextStyle(
                    fontFamily: "UberMove",
                    fontWeight: FontWeight.w700,
                    fontSize: 22),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(
                        2,
                        (index) => BannerWidget(
                            image: DummyDB.homeScreenList1[index]["image"],
                            title: DummyDB.homeScreenList1[index]["title"],
                            subtitle: DummyDB.homeScreenList1[index]
                                ["subtitle"]))),
              ),
              SizedBox(height: 20),
              Text(
                "Save everyday",
                style: TextStyle(
                    fontFamily: "UberMove",
                    fontWeight: FontWeight.w700,
                    fontSize: 22),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(
                        2,
                        (index) => BannerWidget(
                            image: DummyDB.homeScreenList2[index]["image"],
                            title: DummyDB.homeScreenList2[index]["title"],
                            subtitle: DummyDB.homeScreenList2[index]
                                ["subtitle"]))),
              ),
              SizedBox(height: 20),
              Text(
                "More ways to use Uber",
                style: TextStyle(
                    fontFamily: "UberMove",
                    fontWeight: FontWeight.w700,
                    fontSize: 22),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(
                        2,
                        (index) => BannerWidget(
                            image: DummyDB.homeScreenList3[index]["image"],
                            title: DummyDB.homeScreenList3[index]["title"],
                            subtitle: DummyDB.homeScreenList3[index]
                                ["subtitle"]))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
