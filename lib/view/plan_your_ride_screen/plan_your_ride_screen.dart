// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:uber_clone/core/constants/color_constant.dart';
import 'package:uber_clone/view/choose_a_ride_screen/choose_a_ride_screen.dart';
import 'package:uber_clone/view/dummy_db.dart';
import 'package:uber_clone/view/my_flutter_app_icons.dart';

class PlanYourRideScreen extends StatefulWidget {
  const PlanYourRideScreen({super.key});

  @override
  State<PlanYourRideScreen> createState() => _PlanYourRideScreenState();
}

class _PlanYourRideScreenState extends State<PlanYourRideScreen> {
  TextEditingController currentLocation = TextEditingController();
  @override
  void initState() {
    super.initState();
    currentLocation.text = "Chiramolath Road";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        centerTitle: true,
        title: Text(
          "Plan your ride",
          style: TextStyle(fontFamily: "UberMove", fontSize: 18),
        ),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(30),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ElevatedButton.icon(
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    ColorConstant.op10Black)),
                            onPressed: () {},
                            icon: Icon(MyFlutterApp.icon_time, size: 15),
                            label: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("Pickup now",
                                    style: TextStyle(
                                        fontFamily: "UberMove", fontSize: 14)),
                                SizedBox(width: 10),
                                Icon(
                                  MyFlutterApp.icon_arrow,
                                  size: 15,
                                )
                              ],
                            )),
                        SizedBox(width: 10),
                        ElevatedButton.icon(
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    ColorConstant.op10Black)),
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward, size: 20),
                            label: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("One way",
                                    style: TextStyle(
                                        fontFamily: "UberMove", fontSize: 14)),
                                SizedBox(width: 10),
                                Icon(
                                  MyFlutterApp.icon_arrow,
                                  size: 15,
                                )
                              ],
                            )),
                        SizedBox(width: 10),
                        ElevatedButton.icon(
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    ColorConstant.op10Black)),
                            onPressed: () {},
                            icon: Icon(Icons.person, size: 20),
                            label: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("For me",
                                    style: TextStyle(
                                        fontFamily: "UberMove", fontSize: 14)),
                                SizedBox(width: 10),
                                Icon(
                                  MyFlutterApp.icon_arrow,
                                  size: 15,
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.turn_slight_left_outlined, size: 30),
                      Column(
                        children: [
                          Container(
                              width: 300,
                              height: 40,
                              child: TextField(
                                controller: currentLocation,
                                cursorColor: ColorConstant.primaryBlue,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: ColorConstant.op10Black,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide.none),
                                ),
                              )),
                          SizedBox(height: 5),
                          Container(
                              width: 300,
                              height: 40,
                              child: TextField(
                                onTapOutside: (event) {
                                  FocusScope.of(context)
                                      .requestFocus(FocusNode());
                                },
                                autofocus: true,
                                cursorColor: ColorConstant.primaryBlue,
                                decoration: InputDecoration(
                                  hintText: "Where to?",
                                  hintStyle: TextStyle(
                                      fontFamily: "UberMove",
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                  filled: true,
                                  fillColor: ColorConstant.op10Black,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide.none),
                                ),
                              ))
                        ],
                      ),
                      CircleAvatar(
                        backgroundColor: ColorConstant.op10Black,
                        child: Icon(Icons.add, size: 25),
                      )
                    ],
                  ),
                ],
              ),
            )),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          ListTile(
              leading: Icon(Icons.star),
              title: Text("Saved places",
                  style: TextStyle(fontFamily: "UberMove"))),
          Column(
              children: List.generate(
                  DummyDB.planRideList.length,
                  (index) => InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChooseARideScreen()));
                        },
                        child: ListTile(
                          leading: Icon(Icons.location_on),
                          title: Text(
                            DummyDB.planRideList[index]["location"],
                            style: TextStyle(fontFamily: "UberMove"),
                          ),
                          subtitle: Text(
                            DummyDB.planRideList[index]["address"],
                            style:
                                TextStyle(fontFamily: "UberMove", fontSize: 12),
                          ),
                        ),
                      )))
        ]),
      ),
    );
  }
}
