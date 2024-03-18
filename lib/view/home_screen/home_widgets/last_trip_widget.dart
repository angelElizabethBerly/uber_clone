// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:uber_clone/core/constants/color_constant.dart';
import 'package:uber_clone/view/choose_a_ride_screen/choose_a_ride_screen.dart';

class LastTripWidget extends StatelessWidget {
  const LastTripWidget(
      {super.key, required this.location, required this.description});
  final String location;
  final String description;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ChooseARideScreen()));
      },
      child: ListTile(
        leading: CircleAvatar(
          radius: 18,
          backgroundColor: ColorConstant.op10Black,
          child: Icon(Icons.location_on, size: 18),
        ),
        title: Text(
          location,
          style: TextStyle(fontFamily: "UberMove", fontSize: 18),
        ),
        subtitle: Text(
          description,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              fontFamily: "UberMove",
              fontWeight: FontWeight.w400,
              fontSize: 14),
        ),
        trailing: Icon(Icons.arrow_forward_ios, size: 15),
      ),
    );
  }
}
