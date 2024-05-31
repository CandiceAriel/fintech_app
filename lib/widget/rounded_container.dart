// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fintech_app/constants.dart';
import 'package:fintech_app/widget/custom_button.dart';
import 'package:fintech_app/widget/custom_button_small.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class RoundedContainer extends StatefulWidget {
  final Function()? onPressed;
  String text, status, btnTxt;
  int  number;
  String? bgColor;
  double? btnHeight, btnWidth;
  bool wButton, isWhite, isBlack, isWarning, isStatusTop, isMyLoan, withBg, isPending, loanDetail;
  bool isSmall;

  RoundedContainer({
    Key? key, 
    required this.status, 
    required this.text, 
    this.onPressed,
    this.btnTxt = '', 
    this.number = 1,
    this.btnHeight, 
    this.btnWidth, 
    this.bgColor,
    this.isWarning= false, 
    this.isPending= false,
    this.wButton= false,
    this.isWhite= false,
    this.isBlack= false,
    this.isStatusTop= true,
    this.isMyLoan= false,
    this.withBg= false,
    this.loanDetail= false,
    this.isSmall = false,

  }) : super(key: key);

  @override
  State<RoundedContainer> createState() => _RoundedContainerState();
}

class _RoundedContainerState extends State<RoundedContainer> {
  @override
  Widget build(BuildContext context) {
    if ( widget.isMyLoan == true) {
      return Container(
        constraints: const BoxConstraints(
          maxHeight: 95,
        ),
        margin: EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 73, 143, 0.3),
              offset: Offset(0, 4),
              blurRadius: 8,
              spreadRadius: 0,
            )
          ],
          borderRadius: const BorderRadius.all(
            Radius.circular(20.0),
          ),
          color: widget.number.isEven ? Color(0xFFAAD5FF) : Color(0xFFE2F1FF),
        ),
        child: Row(
          children: [
            Container(
              height: double.maxFinite,
              margin: EdgeInsets.only(left: 20),
                // decoration: BoxDecoration(
                //   border: Border.all(color: Colors.blueAccent),
                // ),
                //padding: EdgeInsets.fromLTRB(24, 15, 0, 10),
              child: Row(
                children: [
                  SizedBox(
                    width: 25,
                    height: 47,
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Text(
                        widget.number.toString(),
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                          //fontSize: 66.8,
                            //height: 1.5,
                          fontWeight: FontWeight.w600,
                          
                        ),
                      ),
                    )
                      
                  ),
                  SizedBox(
                    width: 41.0
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: widget.isStatusTop
                    ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            widget.status,
                            style: TextStyle( 
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              height: 1.5,
                              fontWeight: FontWeight.w600,
                              color: (() {
                                if (widget.isWarning) {
                                  return Color(0xFFED1C24);
                                } 
                                if(widget.isPending){
                                  return Color(0xFFFFAA00);
                                }
                                return Color(0xFF39B54A);
                              }())
                            ),
                          ),
                        ),
                              // SizedBox(
                              //   height: 5.0,
                              // ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child:  Text(
                            widget.text,
                            style: const TextStyle( 
                              fontFamily: 'Poppins',
                              fontSize: 25,
                              height: 1.5,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(0, 0, 0, 1)
                            ),
                          ),
                        ),
                              
                              
                      ],
                    )
                    : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child:  Text(
                            widget.text,
                            style: const TextStyle( 
                              fontFamily: 'Poppins',
                              fontSize: 25,
                              height: 1.5,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(0, 0, 0, 1)
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            widget.status,
                            style: TextStyle( 
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              height: 1.5,
                              fontWeight: FontWeight.w600,
                              color: (() {
                                if (widget.isWarning) {
                                  return Color(0xFFED1C24);
                                } 
                                if(widget.isPending){
                                  return Color(0xFFFFAA00);
                                }
                                return Color(0xFF39B54A);
                              }())
                            ),
                          ),
                        ),
                              // SizedBox(
                              //   height: 5.0,
                              // ),
                      ],
                    ),
                  )
                ],
              )
                
            ),
            Spacer(),
            !widget.loanDetail
            ? Stack(
              children: [ 
                SizedBox(
                  width: 120.0,
                  height: double.maxFinite,
                  
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                      //padding: EdgeInsets.only(left: 20.0),
                    decoration: BoxDecoration(
                          //border: Border.all(color: Colors.blueAccent),
                      image: widget.withBg
                        ? DecorationImage(
                          image:  (() {
                            if (widget.isWarning) return Svg('assets/images/loan_rejected.svg');
                            if(widget.isPending) return Svg('assets/images/hourglass.svg');
                            return Svg('assets/images/active_sign.svg');
                          }())
                          ,
                          fit: BoxFit.fill,
                        )
                      : null
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(45, 49, 20, 22),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: CustomButtonSmall(btnText: 'Details', isFilled: true)
                  )
                )
              ],
            )
            :SizedBox(
              width: 120.0,
              height: double.maxFinite,
                  
              child: Container(
                margin: EdgeInsets.only(left: 20),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                      //padding: EdgeInsets.only(left: 20.0),
                decoration: BoxDecoration(
                          //border: Border.all(color: Colors.blueAccent),
                  image: widget.withBg
                  ? DecorationImage(
                    image:  (() {
                      if (widget.isWarning) return Svg('assets/images/loan_rejected.svg');
                      if(widget.isPending) return Svg('assets/images/hourglass.svg');
                      return Svg('assets/images/active_sign.svg');
                    }())
                    ,
                    fit: BoxFit.fill,
                  )
                  : null
                ),
              ),
            ),
          ],
        ),
      );
    } 
    if (widget.loanDetail){
      return Container(
        //clipBehavior: Clip.none,
        constraints: const BoxConstraints(
          maxHeight: 75,
        ),
        margin: EdgeInsets.only(left: 10, right: 10, top: 15),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 73, 143, 0.3),
              offset: Offset(0, 4),
              blurRadius: 8,
              spreadRadius: 0,
            )
          ],
          borderRadius: const BorderRadius.all(
            Radius.circular(20.0),
          ),
          color: widget.isWhite ? Color(0xFFFFFFFF) : Color(0xFFE2F1FF),
        ),
        child: Row(
          children: [
            Container(
              height: double.maxFinite,
              margin: EdgeInsets.only(left: 20),
                // decoration: BoxDecoration(
                //   border: Border.all(color: Colors.blueAccent),
                // ),
                //padding: EdgeInsets.fromLTRB(24, 15, 0, 10),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: widget.isStatusTop
                    ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            widget.status,
                            style: TextStyle( 
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              height: 1.5,
                              fontWeight: FontWeight.w600,
                              color: (() {
                                if (widget.isWarning) {
                                  return Color(0xFFED1C24);
                                } 
                                if(widget.isPending){
                                  return Color(0xFFFFAA00);
                                }
                                return Color(0xFF39B54A);
                              }())
                            ),
                          ),
                        ),
                              // SizedBox(
                              //   height: 5.0,
                              // ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child:  Text(
                            'Next Invoice 1 Mar 2024',
                            style: const TextStyle( 
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              height: 1.5,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(0, 0, 0, 1)
                            ),
                          ),
                        ),
                              
                              
                      ],
                    )
                    : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child:  Text(
                            widget.text,
                            style: const TextStyle( 
                              fontFamily: 'Poppins',
                              fontSize: 25,
                              height: 1.5,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(0, 0, 0, 1)
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            widget.status,
                            style: TextStyle( 
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              height: 1.5,
                              fontWeight: FontWeight.w600,
                              color: (() {
                                if (widget.isWarning) {
                                  return Color(0xFFED1C24);
                                } 
                                if(widget.isPending){
                                  return Color(0xFFFFAA00);
                                }
                                return Color(0xFF39B54A);
                              }())
                            ),
                          ),
                        ),
                              // SizedBox(
                              //   height: 5.0,
                              // ),
                      ],
                    ),
                  )
                ],
              )
                
            ),
            Spacer(),
            ClipRRect(
                child: Container(
                
                  width: 120.0,
                  height: double.maxFinite,
                  margin: EdgeInsets.only(left: 20),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                        //padding: EdgeInsets.only(left: 20.0),
                  decoration: BoxDecoration(
                            //border: Border.all(color: Colors.blueAccent),
                    image: widget.withBg
                    ? DecorationImage(
                      image:  (() {
                        if (widget.isWarning) return Svg('assets/images/loan_rejected.svg');
                        if(widget.isPending) return Svg('assets/images/hourglass.svg');
                        return Svg('assets/images/active_sign.svg');
                      }())
                      ,
                      fit: BoxFit.contain,
                    )
                    : null
                  ),
                ),
              )
              //with button
            
          ],
        ),
      );
    }
    return Container(
      width: double.infinity,
        constraints: BoxConstraints(
          maxHeight: 96
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 73, 143, 0.3),
              offset: Offset(0, 6),
              blurRadius: 8,
              spreadRadius: 0,
            ),
          ],
          borderRadius: const BorderRadius.all(
            Radius.circular(20.0),
          ),
          color: widget.isWhite ? Color(0xFFFFFFFF) : Color(0xFFE2F1FF),
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              
              decoration: BoxDecoration(
                //border: Border.all(color: Colors.blueAccent),
              ),
                //padding: EdgeInsets.fromLTRB(24, 15, 0, 10),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: widget.isStatusTop
                    ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            widget.status,
                            style: TextStyle( 
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              height: 1.5,
                              fontWeight: FontWeight.w600,
                              color: widget.isWarning ? Color(0xFFED1C24) : Color(0xFF39B54A)
                            ),
                          ),
                        ),
                              // SizedBox(
                              //   height: 5.0,
                              // ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            widget.text,
                            style: const TextStyle( 
                             fontFamily: 'Poppins',
                              fontSize: 25,
                              height: 1.5,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(0, 0, 0, 1)
                            ),
                          )
                        ),
                              
                              
                      ],
                    )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child:  Text(
                              widget.text,
                              style: const TextStyle( 
                                fontFamily: 'Poppins',
                                fontSize: 25,
                                height: 1.5,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(0, 0, 0, 1)
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              widget.status,
                              style: TextStyle( 
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                height: 1.5,
                                fontWeight: FontWeight.w600,
                                color: widget.isWarning ? Color(0xFFED1C24) : Color(0xFF39B54A)
                              ),
                            ),
                          ),
                              // SizedBox(
                              //   height: 5.0,
                              // ),
                        ],
                      ),
                    )
                  ],
                )
              ),
            Spacer(),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                      //padding: EdgeInsets.only(left: 20.0),
                    decoration: BoxDecoration(
                          //border: Border.all(color: Colors.blueAccent),
                      image: widget.withBg
                        ? DecorationImage(
                          image:  (() {
                            if (widget.isWarning) return Svg('assets/images/loan_rejected.svg');
                            if(widget.isPending) return Svg('assets/images/hourglass.svg');
                            return Svg('assets/images/active_sign.svg');
                          }())
                          ,
                          fit: BoxFit.fill,
                        )
                      : null
                    ),
                  ),
                  Container(
                    padding: widget.isWhite ? EdgeInsets.zero : EdgeInsets.fromLTRB(30, 49, 20, 22),
                    child: Align(
                      alignment: widget.isWhite ? Alignment.center :  Alignment.bottomCenter,
                      child: CustomButton(btnText: widget.btnTxt, isFilled: true, isSmall: widget.isSmall, height: widget.btnHeight, width: widget.btnWidth, isBlack: widget.isBlack, onPressed: widget.onPressed, )
                    )
                  ) 
                ],
              )
            )
          
          ]
        ),
        
      );
    }
  
}

class _SmallButton extends StatelessWidget{
  String text;
  final bool isBlack;

  _SmallButton({super.key, required this.text,required this.isBlack});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isBlack ? 54.0 : 89.0,
      height: isBlack ? 22.0 : 36.0,
      //padding: isBlack ? EdgeInsets.symmetric(vertical: 5, horizontal: 10) : EdgeInsets.fromLTRB(30, 13, 30, 12) ,
      decoration: isBlack 
      ? BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(10.0),
        ),
        // boxShadow: [
        //   BoxShadow(
        //     color: Color.fromRGBO(0, 130, 255, 0.5),
        //     spreadRadius: 0,
        //     blurRadius: 13,
        //     offset: Offset(0, 6),
        //   )
        // ],
        color: isBlack ? Colors.black : (Color(0xFF0082FF)) 
      )
      : BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(10.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 130, 255, 0.5),
            spreadRadius: 0,
            blurRadius: 13,
            offset: Offset(0, 6),
          )
        ],
        color: isBlack ? Colors.black : (Color(0xFF0082FF)) 
      ),
      child: Center(
        child: GestureDetector(
          onTap: (){
            // context.read<LogInBloc>().add(FormSubmitted());
            // if(text=='Pay'){
            //   Navigator.of(context).pushNamed('/requestpayment');
            // }
          },
          child: Text(
            text,
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontWeight: isBlack ? FontWeight.w400 : FontWeight.w600,
              fontSize: isBlack ? 10 : 15,
              height: 1.5
            ),
          ),
        )
      )
    );
    
  }
}