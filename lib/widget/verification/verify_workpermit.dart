import 'package:fintech_app/widget/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VerifyWorkPermitView extends StatefulWidget {
  final Function() onPressed;
  final bool isSubmitLoan, isDirection;

  const VerifyWorkPermitView({
    this.isSubmitLoan  = true , 
    required this.isDirection, 
    required this.onPressed,
    super.key
  });

  @override
  State<VerifyWorkPermitView> createState() => _VerifyWorkPermitViewState();
}

class _VerifyWorkPermitViewState extends State<VerifyWorkPermitView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      //alignment: WrapAlignment.center,
        children: [
          SizedBox(
            height: 5,
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFE2E2E2)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child:   Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Color(0xFF0082FF)
                          ),
                        ),
                      ),
                    Expanded(
                        flex: 1,
                        child:   Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Color(0xFF0082FF)
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child:   Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Colors.transparent
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child:   Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Colors.transparent
                          ),
                        ),
                      ),
                     Expanded(
                        flex: 1,
                        child:   Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Colors.transparent
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child:   Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Colors.transparent
                          ),
                        ),
                      ),
                     Expanded(
                        flex: 1,
                        child:   Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Colors.transparent
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child:   Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Colors.transparent
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ),
          const SizedBox(
            height: 50,
          ),
          if(widget.isDirection)...[
            Padding(
              padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
              child:  Column(
                children: [
                    Text(
                      'Scan Work Permit \nto verify your identity',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 25,
                        height: 1.5,
                        fontWeight: FontWeight.w700
                      ), // default text style
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      'Confirm your identity with a self captured photo.',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        height: 1.5,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF878787)
                      ), // default text style
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                      Center(
                        child: Container(
                          height: 104,
                          width: 132,
                          decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/workpermit_example.png',),
                              fit: BoxFit.contain,
                              ),
                            )
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Please make sure the \nphoto is clear',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          height: 1.5,
                          fontWeight: FontWeight.w700
                        ), // default text style
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Container(
                                  constraints: BoxConstraints(
                                    minHeight: 104,
                                    maxWidth: 132,
                                  ),
                                  decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/workpermit_notcentered.png',),
                                      fit: BoxFit.fill,
                                      ),
                                    )
                                ),
                                Text(
                                  'Work permit not \ncentered',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                    height: 1.5,
                                    fontWeight: FontWeight.w500
                                  ), // default text style
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Container(
                                  constraints: BoxConstraints(
                                    minHeight: 104,
                                    maxWidth: 132,
                                  ),
                                  decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/workpermit_blur.png',),
                                      fit: BoxFit.fill,
                                      ),
                                    )
                                ),
                                Text(
                                  'Work permit not \nfocused',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                    height: 1.5,
                                    fontWeight: FontWeight.w500
                                  ), // default text style
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          
                          ],
                        )
                      ),
                  ],
                ),
              )
            
          ] else Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
              child:  Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Work Permit Photo',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        height: 1.5,
                        fontWeight: FontWeight.w700
                      ), // default text style
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox( 
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 107,
                        width: 163,
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 25,
                                  width: 163,
                                  padding: EdgeInsets.only(top: 3,bottom: 2),
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(9.19), topRight: Radius.circular(9.19)),
                                    color: Color(0xFF0082FF),
                                  ),
                                  child: Text(
                                    'Front',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 13,
                                      height: 1.5,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFFFFFFFF)
                                    ), // default text style
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  height: 102-25,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD9D9D9),
                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(9.19), bottomRight: Radius.circular(9.19))
                                        // image: DecorationImage(
                                        //   image: AssetImage('assets/images/scan_selfie.png',),
                                        //   fit: BoxFit.contain,
                                        // ),
                                  )
                                ),
                              ],
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: SvgPicture.asset('assets/images/plus_white_round.svg')
                            )
                            
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 107,
                        width: 163,
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 25,
                                  width: 163,
                                  padding: EdgeInsets.only(top: 3,bottom: 2),
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(9.19), topRight: Radius.circular(9.19)),
                                    color: Color(0xFF0082FF),
                                  ),
                                  child: Text(
                                    'Back',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 13,
                                      height: 1.5,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFFFFFFFF)
                                    ), // default text style
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  height: 102-25,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD9D9D9),
                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(9.19), bottomRight: Radius.circular(9.19))
                                        // image: DecorationImage(
                                        //   image: AssetImage('assets/images/scan_selfie.png',),
                                        //   fit: BoxFit.contain,
                                        // ),
                                  )
                                ),
                              ],
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: SvgPicture.asset('assets/images/plus_white_round.svg')
                            )
                            
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'ID Number',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        height: 1.5,
                        fontWeight: FontWeight.w700
                      ), // default text style
                      textAlign: TextAlign.left,
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      enabledBorder: UnderlineInputBorder(      
                        borderSide: BorderSide(color: Color(0xFF0082FF)),   
                      ),  
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF0082FF)),
                      ),
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                      hintText: '1234-5678-1123'
                    ),
                    style: TextStyle(
                      fontSize: 15.0, 
                      height: 1.5, 
                      color: Colors.black,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Expiry Date',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        height: 1.5,
                        fontWeight: FontWeight.w700
                      ), // default text style
                      textAlign: TextAlign.left,
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      enabledBorder: UnderlineInputBorder(      
                        borderSide: BorderSide(color: Color(0xFF0082FF)),   
                      ),  
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF0082FF)),
                      ),
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                      hintText: '11/2/2023'
                    ),
                    style: TextStyle(
                      fontSize: 15.0, 
                      height: 1.5, 
                      color: Colors.black,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ],
              ),
            
          )
        ],
    );
  }
}