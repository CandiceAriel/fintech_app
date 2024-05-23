import 'package:flutter/material.dart';
import 'package:fintech_app/constants.dart';

class CustomButton extends StatelessWidget{
  //final Function()? onPressed;
  final String btnText;
  final double height, width;
  final bool isFilled;

  const CustomButton({super.key, required this.btnText, required this.height, required this.width, required this.isFilled});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: isFilled 
      ? const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15.15),
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
      child: Center(
        child: GestureDetector(
          onTap: (){
            // context.read<LogInBloc>().add(FormSubmitted());
            //Navigator.of(context).pushNamed('/');
          },
          child: Text(
            btnText,
            style: TextStyle(
              color: isFilled ? const Color(0xFFFFFFFF) : const Color(0xFF0082FF),
              fontWeight: FontWeight.w500,
              fontSize: 11.36,
              height: 1.5
            ),
          ),
        )
      )
    );
  }
}
