import 'package:flutter/material.dart';
import 'package:uber_clone/core/constants/color_constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.buttonText});
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: ColorConstant.primaryBlack,
            borderRadius: BorderRadius.circular(5)),
        height: 50,
        width: double.infinity,
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
                fontSize: 20,
                fontFamily: "UberMove",
                color: ColorConstant.primaryWhite),
          ),
        ));
  }
}
