import 'package:flutter/material.dart';
import 'package:fintech_app/constants.dart';

class CustomButton extends StatelessWidget{
  final Function()? onPressed;
  final String btnText;
  final double height, width;

  const CustomButton({super.key, required this.onPressed, required this.btnText, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor: MaterialStateProperty.all<Color>(primaryButtonColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            )
          )
        ),
        child: Text(
          btnText,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
            fontSize: 15,
            height: 1.5
          )
        ),
      )
    );
  }
}
