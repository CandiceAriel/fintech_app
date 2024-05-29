import 'package:fintech_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustommAppbar extends StatelessWidget {
  bool isWhite;
  String title;
  bool isShowLeading;

  CustommAppbar({
    this.isWhite = false,
    this.title = '',
    this.isShowLeading = true,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return isWhite
    ? AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/bg-light.png"),
            ),
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: Color(0xFFFFFFFF),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 25,
            height: 1.5
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF0082FF),
        leading: Builder(builder: (BuildContext context) {
          return GestureDetector(
              child: SvgPicture.asset(
                'assets/images/chevron-left.svg',
                height: 21, 
                width: 15, 
                fit: BoxFit.scaleDown
              ),
              onTap: () => navigator.pop(),
            );
        }),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: GestureDetector(   
              child: SvgPicture.asset(
                'assets/images/notification.svg',
                height: 21, 
                width: 15, 
                fit: BoxFit.fill
              )
            )
          )
        ],
      )
    : AppBar(
        flexibleSpace: Container(
         decoration: const BoxDecoration(
            color: Color(0xFFFFFFFF)
          ),
        ),
        leading: Builder(builder: (BuildContext context) {
          return isShowLeading
            ? GestureDetector(
              child: SvgPicture.asset(
                'assets/images/hamburger-menu.svg',
                height: 21, 
                width: 15, 
                fit: BoxFit.scaleDown
              )
            )
            : GestureDetector(
              child: SvgPicture.asset(
                'assets/images/chevron-left.svg',
                height: 21, 
                width: 15, 
                fit: BoxFit.scaleDown
              ),
              onTap: () => navigator.pop(),
            );
        })
      );
  }
}