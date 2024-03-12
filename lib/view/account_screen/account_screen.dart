// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:uber_clone/core/constants/color_constant.dart';

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
                    color: ColorConstant.op10Black,
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
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100,
                  width: 110,
                  decoration: BoxDecoration(
                      color: ColorConstant.op30Black,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.build_circle_outlined, size: 35),
                      Text("Help",
                          style:
                              TextStyle(fontSize: 15, fontFamily: 'UberMove'))
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 110,
                  decoration: BoxDecoration(
                      color: ColorConstant.op30Black,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.payment, size: 35),
                      Text("Payment",
                          style:
                              TextStyle(fontSize: 15, fontFamily: 'UberMove'))
                    ],
                  ),
                ),
                Container(
                    height: 100,
                    width: 110,
                    decoration: BoxDecoration(
                        color: ColorConstant.op30Black,
                        borderRadius: BorderRadius.circular(10))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
