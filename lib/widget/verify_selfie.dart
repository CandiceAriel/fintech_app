import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class VerifySelfieView extends StatelessWidget {
  final Function? onPressed;
  final String? btnText;

  const VerifySelfieView({this.onPressed, this.btnText, super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
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
          Padding(
              padding: EdgeInsets.fromLTRB(38, 0, 34, 50),
              child:  Column(
                children: [
                  Text(
                    'Take selfie \nto verify your identity',
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
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 199,
                    width: 272,
                    decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/scan_selfie.png',),
                                  fit: BoxFit.contain,
                                ),
                              )
                  ),
                  SizedBox(
                    height: 85,
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    child: MaterialButton(
                      shape: CircleBorder(),
                      child: SvgPicture.asset('assets/images/camera_icon.svg'),
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
        ],
    );
  }
}