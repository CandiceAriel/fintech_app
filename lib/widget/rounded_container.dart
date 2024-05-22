// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class RoundedContainer extends StatefulWidget {
  String text, caption, imgSrc, btnTxt;
  String? bgColor;
  double? height, width;
  bool wButton, isWhite, isBlack, isWarning, isTextTop;

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
    this.isBlack=true,
    this.isTextTop=true})
  : super(key: key);

  @override
  State<RoundedContainer> createState() => _RoundedContainerState();
}

class _RoundedContainerState extends State<RoundedContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88.0,
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
      child: Row(
        children: [
          Container(
            //height: 88.0,
            // decoration: BoxDecoration(
            //       border: Border.all(color: Colors.blueAccent),
            //     ),
            child: widget.isTextTop
            ? Padding(
                padding: const EdgeInsets.fromLTRB(24.0, 11.0, 0.0, 10.0),
                child:
                Column(
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
                ),
              )
            : Padding(
                padding: const EdgeInsets.fromLTRB(24.0, 11.0, 0.0, 10.0),
                child:
                Column(
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
            padding: EdgeInsets.fromLTRB(36, 51, 20, 20),
            child: _SmallButton(text: widget.btnTxt, isBlack: widget.isBlack),
          ),
        ],
      ),
    );
  }
}

class _SmallButton extends StatelessWidget{
  final String text;
  final bool isBlack;

  const _SmallButton({super.key, required this.text,required this.isBlack});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 54.0,
      height: 17.0,
      child: ElevatedButton(
          onPressed: (){
            // context.read<LogInBloc>().add(FormSubmitted());
            Navigator.of(context).pushNamed('/');
          },
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: isBlack ? MaterialStateProperty.all<Color>(Colors.black) : MaterialStateProperty.all(Color(0xFF0082FF)) ,
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              )
            ),
            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontWeight: FontWeight.w400,
              fontSize: 10,
              height: 1.5
            ),
          ),
      )
    );
    
  }
}