import 'package:dotted_border/dotted_border.dart';
import 'package:fintech_app/widget/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class VerifyPayslipView extends StatefulWidget {
  //final Function() onPressed;
  final bool isSubmitLoan, isDirection, photoUploaded;

  const VerifyPayslipView({
    this.isSubmitLoan  = true, 
    this.photoUploaded  = false, 
    required this.isDirection, 
    //required this.onPressed,
    super.key
  });

  @override
  State<VerifyPayslipView> createState() => _VerifyPayslipViewState();
}

class _VerifyPayslipViewState extends State<VerifyPayslipView> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
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
              padding: EdgeInsets.fromLTRB(35, 0, 35, 0),
              child:  Column(
                children: [
                    Text(
                      'Upload 3 month payslip \nto verify your identity',
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
                            image: AssetImage('assets/images/payslip_clear.png',),
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
                                    image: AssetImage('assets/images/payslip_notcentered.png',),
                                      fit: BoxFit.fill,
                                      ),
                                    )
                                ),
                                Text(
                                  'Payslip not \ncentered',
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
                                    image: AssetImage('assets/images/payslip_blur.png',),
                                      fit: BoxFit.fill,
                                      ),
                                    )
                                ),
                                Text(
                                  'Payslip not \nfocused',
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
                    alignment: Alignment.center,
                    child: Text(
                      'Upload Files',
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
                    alignment: Alignment.center,
                    child: Text(
                      'Upload your file to confirm your identity',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        height: 1.5,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF878787)
                      ),
                    ),
                  ),
                  SizedBox( 
                    height: 50,
                  ),
                  DottedBorder(
                    borderType: BorderType.RRect,
                    radius: Radius.circular(20),
                    child: Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 50
                            ),
                            child: Column(
                              //alignment: WrapAlignment.center,
                              //direction: Axis.vertical,
                              children: [
                                Container(
                                  height: 80,
                                  width: 79, 
                                  child: SvgPicture.asset('assets/images/payslip.svg'),
                                  
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Max file 5MB',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      height: 1.5,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF878787)
                                    ),
                                  ),
                                ),
                                SizedBox( 
                                  height: 30,
                                ),Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      width: 145,
                                      height: 95,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        color: Color(0xFFD9D9D9),
                                        image: widget.photoUploaded
                                        ? DecorationImage(
                                            image: AssetImage('assets/images/proofliving_blur.png',),
                                            fit: BoxFit.fill,
                                          )
                                        : null,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromRGBO(0, 0, 0, 0.25),
                                            offset: Offset(0, 4),
                                            blurRadius: 4,
                                            spreadRadius: 0,
                                          )
                                        ],
                                      ),
                                      child: !widget.photoUploaded
                                        ? Center(
                                          child: MaterialButton(
                                            height: 31,
                                              //maxWidth: 31,
                                            shape: CircleBorder(),
                                            child: SvgPicture.asset('assets/images/plus_white_round.svg'),
                                            color: Color(0xFF0082FF),
                                            onPressed: (){},
                                          )
                                        ) 
                                        : null
                                    ),
                                    
                                    Container(
                                      width: 145,
                                      height: 95,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        color: Color(0xFFD9D9D9),
                                        image: widget.photoUploaded
                                        ? DecorationImage(
                                            image: AssetImage('assets/images/proofliving_blur.png',),
                                            fit: BoxFit.fill,
                                          )
                                        : null,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromRGBO(0, 0, 0, 0.25),
                                            offset: Offset(0, 4),
                                            blurRadius: 4,
                                            spreadRadius: 0,
                                          )
                                        ],
                                      ),
                                      child: !widget.photoUploaded
                                        ? Center(
                                          child: MaterialButton(
                                            height: 31,
                                              //maxWidth: 31,
                                            shape: CircleBorder(),
                                            child: SvgPicture.asset('assets/images/plus_white_round.svg'),
                                            color: Color(0xFF0082FF),
                                            onPressed: (){},
                                          )
                                        ) 
                                        : null
                                    ),
                                    
                                  ],
                                ),
                                 SizedBox( 
                                  height: 13,
                                ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  width: 145,
                                  height: 95,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    color: Color(0xFFD9D9D9),
                                    image: widget.photoUploaded
                                    ? DecorationImage(
                                        image: AssetImage('assets/images/proofliving_blur.png',),
                                        fit: BoxFit.fill,
                                      )
                                    : null,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.25),
                                        offset: Offset(0, 4),
                                        blurRadius: 4,
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                  child: !widget.photoUploaded
                                    ? Center(
                                      child: MaterialButton(
                                        height: 31,
                                          //maxWidth: 31,
                                        shape: CircleBorder(),
                                        child: SvgPicture.asset('assets/images/plus_white_round.svg'),
                                        color: Color(0xFF0082FF),
                                        onPressed: (){},
                                      )
                                    ) 
                                    : null
                                ),
                              ),
                                
                            ],
                          ),
                        ),
                      )
                    
                  
              ],
            ),
            
          )
        ],
    );
  }
}