// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:uber_clone/core/constants/color_constant.dart';
import 'package:uber_clone/core/constants/image_constant.dart';
import 'package:uber_clone/view/dummy_db.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Activity",
              style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'UberMove')),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(children: [
              ListTile(
                  title: Text("Past",
                      style: TextStyle(
                          fontFamily: "UberMove",
                          fontSize: 20,
                          fontWeight: FontWeight.w700)),
                  trailing: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: ColorConstant.op10Black),
                    child: Icon(Icons.tune),
                  )),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border:
                        Border.all(color: ColorConstant.op30Black, width: 1.5)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Image.asset(ImageConstants.uberLastTripPng),
                    ),
                    Text("29W5+X5J",
                        style: TextStyle(
                            fontFamily: "UberMove",
                            fontSize: 20,
                            fontWeight: FontWeight.w700)),
                    Text("Mar 10 . 7:46 PM \n₹0.00 . Cancelled",
                        style: TextStyle(
                            fontFamily: "UberMove",
                            fontSize: 15,
                            color: ColorConstant.op60Black)),
                    SizedBox(height: 10),
                    ElevatedButton.icon(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                ColorConstant.op4Black)),
                        onPressed: () {},
                        icon: Icon(Icons.refresh),
                        label: Text(
                          "Rebook",
                          style: TextStyle(fontFamily: "UberMove"),
                        ))
                  ],
                ),
              ),
              SizedBox(height: 10),
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                        title: Text(DummyDB.activities[index].location,
                            style: TextStyle(
                                fontFamily: "UberMove",
                                fontSize: 15,
                                fontWeight: FontWeight.w700)),
                        subtitle: Text(
                            "${DummyDB.activities[index].date} . ${DummyDB.activities[index].time} \n₹${DummyDB.activities[index].price}",
                            style: TextStyle(
                                fontFamily: "UberMove",
                                fontSize: 13,
                                color: ColorConstant.op60Black)),
                        leading: Container(
                          height: 100,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ColorConstant.op10Black),
                          child: Image.asset(DummyDB.activities[index].image),
                        ),
                        trailing: ElevatedButton.icon(
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    ColorConstant.op4Black)),
                            onPressed: () {},
                            icon: Icon(Icons.refresh, size: 20),
                            label: Text(
                              "Rebook",
                              style: TextStyle(
                                  fontFamily: "UberMove", fontSize: 13),
                            )));
                  },
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: DummyDB.activities.length)
            ]),
          ),
        ));
  }
}
