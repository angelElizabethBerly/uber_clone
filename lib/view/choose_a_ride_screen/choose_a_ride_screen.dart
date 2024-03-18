// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:uber_clone/core/constants/color_constant.dart';
import 'package:uber_clone/core/constants/image_constant.dart';
import 'package:uber_clone/view/choose_a_ride_screen/widgets/bottom_sheet_widget.dart';
import 'package:uber_clone/view/confirm_pickup_screen/confirm_pickup_screen.dart';
import 'package:uber_clone/view/dummy_db.dart';
import 'package:uber_clone/view/global_widgets/custom_button.dart';

class ChooseARideScreen extends StatefulWidget {
  const ChooseARideScreen({super.key});

  @override
  State<ChooseARideScreen> createState() => _ChooseARideScreenState();
}

class _ChooseARideScreenState extends State<ChooseARideScreen> {
  final sheet = GlobalKey();
  final controller = DraggableScrollableController();

  int selectedRideIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorConstant.primaryWhite,
        shape: CircleBorder(),
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back, size: 30),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage(ImageConstants.mapPng))),
          ),
          DraggableScrollableSheet(
            key: sheet,
            initialChildSize: 0.5,
            maxChildSize: 0.95,
            minChildSize: 0.18,
            expand: true,
            snap: true,
            snapSizes: const [0.5],
            controller: controller,
            builder: (context, scrollController) {
              return Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: ColorConstant.primaryWhite,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: CustomScrollView(
                    controller: scrollController,
                    slivers: [
                      SliverToBoxAdapter(
                        child: Text(
                          "Choose your ride",
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(fontFamily: "UberMove", fontSize: 20),
                        ),
                      ),
                      SliverList.list(children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: List.generate(
                                DummyDB.chooseRideList.length,
                                (index) => InkWell(
                                    onTap: () {
                                      selectedRideIndex = index;
                                      setState(() {});
                                      // print(selectedRideIndex);
                                    },
                                    child: BottomSheetWidget(
                                        index: index,
                                        selectedRideIndex: selectedRideIndex))),
                          ),
                        )
                      ])
                    ],
                  ));
            },
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(Icons.money),
                SizedBox(width: 10),
                Text("Cash", style: TextStyle(fontFamily: "UberMove")),
                Spacer(),
                Icon(Icons.arrow_forward_ios, size: 15)
              ],
            ),
            SizedBox(height: 25),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ConfirmPickupScreen()));
              },
              child: CustomButton(
                  buttonText:
                      "Choose ${DummyDB.chooseRideList[selectedRideIndex]["ride"]}"),
            )
          ],
        ),
      ),
    );
  }
}
