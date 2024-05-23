// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class NumberedContainer extends StatefulWidget {
  String text, caption, imgSrc, btnTxt;
  String? bgColor;
  double? height, width;
  bool wButton, isWhite, isBlack, isWarning, isTextTop;

  NumberedContainer({
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
    this.isTextTop= true})
  : super(key: key);

  @override
  State<NumberedContainer> createState() => _NumberedContainerState();
}

class _NumberedContainerState extends State<NumberedContainer> {
  @override
  Widget build(BuildContext context) {
      return Container(
        height: 90.0,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 73, 143, 0.3),
              offset: Offset(0, 4),
              blurRadius: 8,
              spreadRadius: 0,
            )
          ],
          borderRadius: BorderRadius.circular(20.0),
          color: widget.isWhite ? Color.fromRGBO(255, 255, 255, 1) : Color.fromRGBO(226, 241, 255, 1)
        ),
        child: Card(
          child:  Row(
          children: [
            Container(
              //height: 88.0,
              // decoration: BoxDecoration(
              //       border: Border.all(color: Colors.blueAccent),
              //     ),
              padding: EdgeInsets.fromLTRB(24, 15, 0, 15),
              child: Row(
                children: [
                  Text(
                    '1',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                      fontSize: 66.8,
                      height: 1.5,
                      fontWeight: FontWeight.w600,
                    
                    ),
                  ),
                  Center(
                    child: widget.isTextTop
                    ? Column(
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
            
            SizedBox(
              width: 106.0
            ),
            widget.imgSrc != ''
            ? Stack(
              children: [
                Container(
                  width: 120.0,
                  height: double.maxFinite,
                  //padding: EdgeInsets.only(left: 20.0),
                  decoration: BoxDecoration(
                    //border: Border.all(color: Colors.blueAccent),
                    image: DecorationImage(
                      image: Svg(widget.imgSrc),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(36, 51, 20, 20),
                  child: _SmallButton(text: widget.btnTxt, isBlack: widget.isBlack),
                ),
                
              ],
            )
            : Container(
              width: 120.0,
              height: double.maxFinite,
              // decoration: BoxDecoration(
              //   border: Border.all(color: Colors.blueAccent),  
              // ),
              //padding: EdgeInsets.fromLTRB(0, 26, 24, 26),
              child: Align(
                alignment: Alignment.center,
                child:  _SmallButton(text: widget.btnTxt, isBlack: widget.isBlack),
              )
            
            ),
          ],
        ),
        )
       
      );
   
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
      height: isBlack ? 17.0 : 36.0,
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