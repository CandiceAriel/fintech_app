import 'package:flutter/material.dart';
import 'package:fintech_app/constants.dart';

class CustomButton extends StatelessWidget{
  final Function()? onPressed;
  final String btnText;
  final double? height, width;
  final bool isFilled, isBlack;
  bool isSmall;

  CustomButton({
    super.key, 
    required this.btnText, 
    this.height, 
    this.width, 
    required this.isFilled, 
    required this.isBlack, 
    this.onPressed, 
    required this.isSmall
  });

  @override
  Widget build(BuildContext context) {
    if(isBlack == true){
      return Container(
        height: isSmall == true ? 17 : height,
        width: isSmall == true ? 54 : width,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF000000)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              )
            ),
            
            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
          ),
          child: Text(
            btnText,
            style: TextStyle(
              fontFamily: 'Poppins',
              color: const Color(0xFFFFFFFF),
              fontWeight: FontWeight.w500,
              fontSize: 10,
              height: 1.5
            ),
          ),
        )
      );
    }
    //if not black
    return Container(
      height: isSmall ? 36 :  height,
      width: isSmall ? 90 : width,
      decoration: isFilled 
      ? const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 130, 255, 0.5),
            spreadRadius: 0,
            blurRadius: 13,
            offset: Offset(0, 6),
          )
        ],
        color: Color.fromRGBO(0, 130, 255, 1)
      )
      : BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15.15),
        ),
        border: Border.all(color: Color(0xFF0082FF)),  
        color: Color(0xFFFFFFFF)
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          foregroundColor: isFilled ? MaterialStateProperty.all<Color>(Color(0xFFFFFFFF)) : MaterialStateProperty.all<Color>(Color(0xFF0082FF)),
          backgroundColor: isFilled ? MaterialStateProperty.all<Color>(Color(0xFF0082FF)) : MaterialStateProperty.all<Color>(Color(0xFFFFFFFF)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            )
          ),
          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero)
        ),
        child: Text(
          btnText,
          style: TextStyle(
            fontFamily: 'Poppins',
            //color: isFilled ? const Color(0xFFFFFFFF) : const Color(0xFF0082FF),
            fontWeight: FontWeight.w500,
            fontSize: 15,
            height: 1.5
          ),
        ),
      )
    );
  }
}
