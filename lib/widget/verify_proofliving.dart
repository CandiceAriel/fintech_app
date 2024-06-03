import 'package:fintech_app/widget/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class VerifyProofLivingView extends StatelessWidget {
  //final Function() onPressed;
  final bool isFirstLoan, isDirection;

  const VerifyProofLivingView({
    this.isFirstLoan  = true , 
    required this.isDirection, 
    //required this.onPressed,
    super.key
  });

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
                          width: 46,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Color(0xFF0082FF)
                          ),
                        ),
                      ),
                    Expanded(
                        flex: 1,
                        child:   Container(
                          width: 46,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Color(0xFF0082FF)
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child:   Container(
                          width: 46,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Color(0xFF0082FF)
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child:   Container(
                          width: 46,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Color(0xFF0082FF)
                          ),
                        ),
                      ),
                     Expanded(
                        flex: 1,
                        child:   Container(
                          width: 46,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Color(0xFF0082FF)
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child:   Container(
                          width: 46,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Colors.transparent
                          ),
                        ),
                      ),
                     Expanded(
                        flex: 1,
                        child:   Container(
                          width: 46,
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
          if(isDirection)...[
            Padding(
              padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
              child:  Column(
                children: [
                    Text(
                      'Upload proof living \nto verify your identity',
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
                            image: AssetImage('assets/images/proofliving_accepted.png',),
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
                                    image: AssetImage('assets/images/proofliving_notcentered.png',),
                                      fit: BoxFit.fill,
                                      ),
                                    )
                                ),
                                Text(
                                  'Card not \ncentered',
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
                                    image: AssetImage('assets/images/proofliving_blur.png',),
                                      fit: BoxFit.fill,
                                      ),
                                    )
                                ),
                                Text(
                                  'Card not \nfocused',
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
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                        vertical: 50
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: const Color(0xFF000000)
                        )
                      ),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                           Container(
                            height: 81,
                            width: 57, 
                            child: SvgPicture.asset('assets/images/document.svg'),
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
                            height: 55,
                          ),
                          Container(
                            height: 38,
                            width: 110,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                              border: Border.all(color: Color(0xFF0082FF)),  
                              color: Color(0xFFFFFFFF)
                            ),
                            child: ElevatedButton(
                              onPressed: () => {},
                              style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all<Color>(Color(0xFFFFFFFF)),
                                backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF0082FF)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  )
                                ),
                                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero)
                              ),
                              child: Text(
                                'Choose File',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  //color: isFilled ? const Color(0xFFFFFFFF) : const Color(0xFF0082FF),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  height: 1.5
                                ),
                              ),
                            )
                          )
                        
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