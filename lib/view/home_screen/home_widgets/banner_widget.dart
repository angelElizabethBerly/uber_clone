// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:uber_clone/core/constants/image_constant.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});
  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image)),
                borderRadius: BorderRadius.circular(20)),
            height: 150,
            width: 250,
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Text(
                title,
                style: TextStyle(fontFamily: "UberMove", fontSize: 18),
              ),
              SizedBox(width: 2),
              Icon(Icons.arrow_forward, size: 18)
            ],
          ),
          Text(
            subtitle,
            style: TextStyle(fontFamily: "UberMove", fontSize: 12),
          )
        ],
      ),
    );
  }
}
