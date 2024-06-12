import 'package:dotted_border/dotted_border.dart';
import 'package:fintech_app/widget/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class VerifyPayslipReloanView extends StatefulWidget {
  //final Function() onPressed;
  final bool isSubmitLoan, photoUploaded, isReloan;

  const VerifyPayslipReloanView({
    this.isSubmitLoan  = true, 
    this.photoUploaded  = false, 
    this.isReloan = false,
    //required this.onPressed,
    super.key
  });

  @override
  State<VerifyPayslipReloanView> createState() => _VerifyPayslipReloanViewState();
}

class _VerifyPayslipReloanViewState extends State<VerifyPayslipReloanView> {
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
                          height: 203,
                          width: 199,
                          decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/payslip_outline_blue.png',),
                              fit: BoxFit.contain,
                              ),
                            )
                        ),
                      ),
                  SizedBox(
                    height: 113,
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    child: MaterialButton(
                      shape: CircleBorder(),
                      child: SvgPicture.asset('assets/images/add_image.svg'),
                      color: Color(0xFF0082FF),
                      textColor: Colors.amber,
                      onPressed: (){},
                    ),
                  ),
                   SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Take a selfie',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      height: 1.5,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF000000)
                    ), // default text style
                  ),
                        
                      
                  ],
                ),
              )
        ]
    );
  }
}