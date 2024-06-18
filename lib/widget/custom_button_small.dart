import 'package:flutter/material.dart';
import 'package:fintech_app/constants.dart';

class CustomButtonSmall extends StatelessWidget{
  final Function()? onPressed;
  final String btnText;
  final bool isBlack, isDetail;
  double? height,width;

  CustomButtonSmall({
    super.key, 
    required this.btnText, 
    this.isBlack = false,
    this.isDetail = false,
    this.height,
    this.width,
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {
      return Container(
        constraints: BoxConstraints(
          maxWidth: 90
        ),
        height: height ?? 36,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 130, 255, 0.5),
              spreadRadius: 0,
              blurRadius: 13,
              offset: Offset(0, 6),
            )
          ],
          // color: isBlack ? Color(0xFF000000) : Color.fromRGBO(0, 130, 255, 1)
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            //foregroundColor: isFilled ? MaterialStateProperty.all<Color>(Color(0xFFFFFFFF)) : MaterialStateProperty.all<Color>(Color(0xFF0082FF)),
            backgroundColor: isBlack
              ? MaterialStateProperty.all<Color>(Colors.black)
              : MaterialStateProperty.all<Color>(Color(0xFF0082FF))
            ,
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
              color: const Color(0xFFFFFFFF),
              fontWeight: FontWeight.w500,
              fontSize: isBlack ? 10 : 15,
              height: 1.5
            ),
          ),
        )
      );
    
    
  }
}
