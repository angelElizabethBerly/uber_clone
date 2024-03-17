// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:uber_clone/core/constants/color_constant.dart';
import 'package:uber_clone/core/constants/image_constant.dart';
import 'package:uber_clone/view/dummy_db.dart';
import 'package:uber_clone/view/my_flutter_app_icons.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Angel Elizabeth",
                style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'UberMove')),
            SizedBox(height: 5),
            Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: ColorConstant.op4Black,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.star, size: 15),
                    SizedBox(width: 5),
                    Text("4.96",
                        style: TextStyle(fontSize: 15, fontFamily: 'UberMove'))
                  ],
                ))
          ],
        ),
        actions: [Icon(Icons.account_circle_rounded, size: 80)],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 110,
                    decoration: BoxDecoration(
                        color: ColorConstant.op4Black,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.build_circle_outlined, size: 35),
                        Text("Help",
                            style:
                                TextStyle(fontSize: 18, fontFamily: 'UberMove'))
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 110,
                    decoration: BoxDecoration(
                        color: ColorConstant.op4Black,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.payment, size: 35),
                        Text("Payment",
                            style:
                                TextStyle(fontSize: 18, fontFamily: 'UberMove'))
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 110,
                    decoration: BoxDecoration(
                        color: ColorConstant.op4Black,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.bookmark, size: 35),
                        Text("Activity",
                            style:
                                TextStyle(fontSize: 18, fontFamily: 'UberMove'))
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Column(
                  children: List.generate(
                      DummyDB.accountScreenListTile.length,
                      (index) => Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: ListTile(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              tileColor: ColorConstant.op4Black,
                              title: Text(
                                DummyDB.accountScreenListTile[index]["title"],
                                style: TextStyle(
                                    fontFamily: "UberMove", fontSize: 18),
                              ),
                              subtitle: Text(
                                DummyDB.accountScreenListTile[index]
                                    ["subtitle"],
                              ),
                              trailing: Image.asset(
                                  ImageConstants.accountScreenList[index]),
                            ),
                          ))),
              Divider(
                thickness: 5,
                color: ColorConstant.op10Black,
              ),
              Column(
                  children: List.generate(
                      DummyDB.accountScreenList2.length,
                      (index) => ListTile(
                            leading: DummyDB.accountScreenList2[index]["icon"],
                            title: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(DummyDB.accountScreenList2[index]["text"],
                                    style: TextStyle(fontFamily: "UberMove")),
                                SizedBox(width: 5),
                                DummyDB.accountScreenList2[index]
                                            ["notification"] ==
                                        true
                                    ? CircleAvatar(
                                        radius: 3,
                                        backgroundColor:
                                            ColorConstant.primaryBlue)
                                    : SizedBox()
                              ],
                            ),
                          ))),
              SizedBox(height: 10),
              Text(
                "v4.517.1000",
                style: TextStyle(
                    fontFamily: "UberMove",
                    fontWeight: FontWeight.w100,
                    color: ColorConstant.op30Black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
