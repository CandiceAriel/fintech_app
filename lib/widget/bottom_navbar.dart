import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // constraints: const BoxConstraints(
      //     maxHeight: 66.0,
      //   ),
      margin: EdgeInsets.only(left: 10,right: 10),
      padding: EdgeInsets.only(left: 19,right: 19),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            offset: Offset(0, -2),
            blurRadius: 5.0,
            spreadRadius: 0,
          )
        ],
        color: Color(0xFFFFFFFF)
      ),
      child: Center(
        child: Row(
          children: [
          GestureDetector(
              child: SvgPicture.asset(
                'assets/images/home-icon.svg',
                height: 26, 
                width: 26, 
                fit: BoxFit.scaleDown
              )
            )
          ],
        ),
      )
      
    );
  }
}