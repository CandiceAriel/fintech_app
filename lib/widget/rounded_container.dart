// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class RoundedContainer extends StatefulWidget {
  String text, caption, imgSrc, btnTxt;
  String? bgColor;
  double? height, width;
  bool wButton, isWhite, isBlack, isWarning, isTextTop, isMyLoan, withBg;

  RoundedContainer({
    Key? key, 
    required this.caption, 
    required this.text, 
    required this.imgSrc, 
    required this.btnTxt, 
    this.height, 
    this.width, 
    this.bgColor,
    this.isWarning= false, 
    this.wButton= false,
    this.isWhite= false,
    this.isBlack= true,
    this.isTextTop= true,
    this.isMyLoan= false,
    this.withBg= false})
  : super(key: key);

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
                  SizedBox(
                    width: 25,
                    height: 47,
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Text(
                        '1',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                          fontSize: 66.8,
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
                    child: widget.isTextTop
                    ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            widget.caption,
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
                            widget.caption,
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
            Stack(
              children: [ 
                Container(
                  width: 120.0,
                  height: double.maxFinite,
                    //padding: EdgeInsets.only(left: 20.0),
                  decoration: BoxDecoration(
                      //border: Border.all(color: Colors.blueAccent),
                    image: widget.withBg
                    ? DecorationImage(
                      image: Svg(widget.imgSrc),
                      fit: BoxFit.fill,
                    )
                    : null
                  ),
                ),
                widget.isWarning 
                ? Container(
                  padding: EdgeInsets.fromLTRB(45, 40, 20, 10),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: _SmallButton(text: widget.btnTxt, isBlack: widget.isBlack),
                  )
                    
                )
                : Padding(
                  padding: EdgeInsets.fromLTRB(40, 45, 20, 10),
                  child: _SmallButton(text: widget.btnTxt, isBlack: widget.isBlack),
                )
                  
              ],
            )
          ],
        ),
      );
    } else {
      return Container(
        constraints: const BoxConstraints(
          maxHeight: 96,
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
              height: double.maxFinite,
              margin: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                //border: Border.all(color: Colors.blueAccent),
              ),
                //padding: EdgeInsets.fromLTRB(24, 15, 0, 10),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: widget.isTextTop
                    ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            widget.caption,
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
                              widget.caption,
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
          Stack(
            children: [
              Container(
                width: 120.0,
                height: double.maxFinite,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                    //padding: EdgeInsets.only(left: 20.0),
                decoration: BoxDecoration(
                      //border: Border.all(color: Colors.blueAccent),
                  image: widget.withBg
                  ? DecorationImage(
                    image: Svg(widget.imgSrc),
                    fit: BoxFit.fill,
                  )
                  : null
                ),
              ),
              widget.isBlack 
              ? Padding(
                    //padding: EdgeInsets.fromLTRB(40, 50, 20, 10),
                padding: EdgeInsets.fromLTRB(40, 55, 20, 20),
                child: _SmallButton(text: widget.btnTxt, isBlack: widget.isBlack),
                    
              )
                : Align(
                  alignment: Alignment.centerRight,
                  child: _SmallButton(text: widget.btnTxt, isBlack: widget.isBlack),
              )  
            ],
          )],
        ),
        
      );
    }
  }
}

class _SmallButton extends StatelessWidget{
  final String text;
  final bool isBlack;

  const _SmallButton({super.key, required this.text,required this.isBlack});

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
            //Navigator.of(context).pushNamed('/');
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