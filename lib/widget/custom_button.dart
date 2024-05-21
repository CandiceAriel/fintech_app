import 'package:flutter/material.dart';
import 'package:fintech_app/constants.dart';

class CustomButton extends StatelessWidget{
  final Function()? onPressed;
  final String btnText;

  const CustomButton({super.key, required this.onPressed, required this.btnText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.0,
      width: 376.0,
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
            fontWeight: FontWeight.w800,
            fontFamily: 'NunitoSans',
            fontSize: 21,
            height: 0.6
          )
        ),
      )
    );
  }
}
