import 'package:fintech_app/widget/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VerifyPassportView extends StatefulWidget {
  //final Function() onPressed;
  final bool isSubmitLoan, isDirection, isReloan;

  const VerifyPassportView({
    this.isSubmitLoan  = true,
    this.isReloan = false, 
    required this.isDirection, 
    //required this.onPressed,
    super.key
  });

  @override
  State<VerifyPassportView> createState() => _VerifyPassportViewState();
}

class _VerifyPassportViewState extends State<VerifyPassportView> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
        children: [
          SizedBox(
            height: 5,
            child: Stack(
              children: [
                //Frst Loan
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
                            color: widget.isDirection ? Colors.transparent : Color(0xFF0082FF)
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
                )
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if(widget.isSubmitLoan)...[
                    Text(
                      'Scan Passport \nto verify your identity',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 25,
                        height: 1.5,
                        fontWeight: FontWeight.w700
                      ), // default text style
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      'Confirm your identity with just take photo.',
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
                            image: AssetImage('assets/images/passport_right.png',),
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
                                    image: AssetImage('assets/images/passport_not_centered.png',),
                                      fit: BoxFit.fill,
                                      ),
                                    )
                                ),
                                Text(
                                  'Passport not \ncentered',
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
                                    image: AssetImage('assets/images/passport_blur.png',),
                                      fit: BoxFit.fill,
                                      ),
                                    )
                                ),
                                Text(
                                  'Passport not \nfocused',
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
                      
                    ] //FirstLoanWidget
                    else ...[
                      Container(
                        margin: const EdgeInsets.only(bottom: 50),
                        height: 199,
                        width: 272,
                        decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/scan_selfie.png',),
                            fit: BoxFit.contain,
                            ),
                          )
                      ),
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
                        ),
                      ),
                    ] //ReLoanWidget
                  
                    
                  
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
                      'Passport Photo',
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
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      height: 125,
                      width: 163,
                      child: Stack(
                        children: [
                          Container(
                            height: 115,
                            decoration: BoxDecoration(
                              color: Color(0xFFD9D9D9),
                              borderRadius: BorderRadius.circular(9.19)
                                        // image: DecorationImage(
                                        //   image: AssetImage('assets/images/scan_selfie.png',),
                                        //   fit: BoxFit.contain,
                                        // ),
                            )
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: SvgPicture.asset('assets/images/plus_white_round.svg')
                          )
                            
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Passport Number',
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
                      'Name',
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
                      hintText: 'Iker Casillas'
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