import 'package:fintech_app/constants.dart';
import 'package:fintech_app/layout/default.dart';
import 'package:fintech_app/widget/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class VerifyOtpScreen extends StatefulWidget {
  String email;
  bool isFinished, isRegistrarion;

  VerifyOtpScreen({
    Key? key,
    this.email = 'abcd@gmail.com',
    this.isFinished= false,
    this.isRegistrarion= true
  }) : super(key: key);

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => DefaultScaffold(
        bodyWidget: VerifyOtpScreen(),
        showAppBar: false,
        isBodyScroll: true,
        withNavbar: false,
      )
    );
  }

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  @override
  Widget build(BuildContext context) {
    if( !widget.isFinished ){
      return  Container(
        height: MediaQuery.of(context).size.height - kToolbarHeight,
        padding: const EdgeInsets.fromLTRB(34, 50, 34, 25),
        child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.isRegistrarion ? 'Verification!' : 'Registration',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 25,
                  height: 1.5,
                  fontWeight: FontWeight.w700
                ), // default text style
              ),
              const Text(
                'Please verify your email',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 13,
                  height: 1.5,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF878787)
                ), // default text style
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 203,
                width: 326,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: Svg(
                      'assets/images/waiting-otp.svg',
                    ),
                    fit: BoxFit.fitHeight,
                  ),
                )
              ),
              const SizedBox(
                height: 50,
              ),
              RichText(
                text: TextSpan(
                children: [
                  const TextSpan(
                    text: "The code sent to ",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      height: 1.5,
                      color: Color(0xFF646464)
                    ),
                  ),
                  TextSpan(
                    text: widget.email,
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      height: 1.5,
                      color: Color(0xFF0082FF)
                    ),
                  ),
                ],
              ),
              
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Container(
                  constraints: const BoxConstraints(
                    minHeight: 73,
                    maxHeight: 80,
                    maxWidth: 59,
                  ),
                  // padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    //color: Color(0xFFF1F1F1)
                  ),
                  alignment: Alignment.center,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFFF1F1F1),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide:  BorderSide(
                              width: 0, 
                              style: BorderStyle.none,
                          ),
                      ),
                      // focusedBorder: const OutlineInputBorder(
                      //   borderSide: BorderSide(color: Color(0xFF0082FF)),
                      // ),
                      // enabledBorder: InputBorder.none,
                      // errorBorder: InputBorder.none,
                      isCollapsed: true,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                      counterText: ''
                    ),
                    maxLength: 1,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 35.0, 
                      height: 1.5, 
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                Container(
                  constraints: const BoxConstraints(
                    minHeight: 73,
                    maxHeight: 80,
                    maxWidth: 59,
                  ),
                  // padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    //color: Color(0xFFF1F1F1)
                  ),
                  alignment: Alignment.center,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFFF1F1F1),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide:  BorderSide(
                              width: 0, 
                              style: BorderStyle.none,
                          ),
                      ),
                      // focusedBorder: const OutlineInputBorder(
                      //   borderSide: BorderSide(color: Color(0xFF0082FF)),
                      // ),
                      // enabledBorder: InputBorder.none,
                      // errorBorder: InputBorder.none,
                      isCollapsed: true,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                      counterText: ''
                    ),
                    maxLength: 1,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 35.0, 
                      height: 1.5, 
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                 Container(
                  constraints: const BoxConstraints(
                    minHeight: 73,
                    maxHeight: 80,
                    maxWidth: 59,
                  ),
                  // padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    //color: Color(0xFFF1F1F1)
                  ),
                  alignment: Alignment.center,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFFF1F1F1),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide:  BorderSide(
                              width: 0, 
                              style: BorderStyle.none,
                          ),
                      ),
                      // focusedBorder: const OutlineInputBorder(
                      //   borderSide: BorderSide(color: Color(0xFF0082FF)),
                      // ),
                      // enabledBorder: InputBorder.none,
                      // errorBorder: InputBorder.none,
                      isCollapsed: true,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                      counterText: ''
                    ),
                    maxLength: 1,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 35.0, 
                      height: 1.5, 
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                 Container(
                  constraints: const BoxConstraints(
                    minHeight: 73,
                    maxHeight: 80,
                    maxWidth: 59,
                  ),
                  // padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    //color: Color(0xFFF1F1F1)
                  ),
                  alignment: Alignment.center,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFFF1F1F1),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide:  BorderSide(
                              width: 0, 
                              style: BorderStyle.none,
                          ),
                      ),
                      // focusedBorder: const OutlineInputBorder(
                      //   borderSide: BorderSide(color: Color(0xFF0082FF)),
                      // ),
                      // enabledBorder: InputBorder.none,
                      // errorBorder: InputBorder.none,
                      isCollapsed: true,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                      counterText: ''
                    ),
                    maxLength: 1,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 35.0, 
                      height: 1.5, 
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                 Container(
                  constraints: const BoxConstraints(
                    minHeight: 73,
                    maxHeight: 80,
                    maxWidth: 59,
                  ),
                  // padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    //color: Color(0xFFF1F1F1)
                  ),
                  alignment: Alignment.center,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFFF1F1F1),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide:  BorderSide(
                              width: 0, 
                              style: BorderStyle.none,
                          ),
                      ),
                      // focusedBorder: const OutlineInputBorder(
                      //   borderSide: BorderSide(color: Color(0xFF0082FF)),
                      // ),
                      // enabledBorder: InputBorder.none,
                      // errorBorder: InputBorder.none,
                      isCollapsed: true,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                      counterText: ''
                    ),
                    maxLength: 1,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 35.0, 
                      height: 1.5, 
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
              ],
            ),
             const SizedBox(
              height: 20,
            ),
            const Text(
              '01:00',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 30,
                height: 1.5,
                fontWeight: FontWeight.w500,
                color: Color(0xFF000000)
              ), // default text style
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'Didn’t receive OTP code?',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 13,
                height: 1.5,
                fontWeight: FontWeight.w500,
                color: Color(0xFF878787)
              ), // default text style
            ),
            GestureDetector(
              child: const Text(
                'Resend now',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  height: 1.5,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF0082FF),
                  decoration: TextDecoration.underline
                ),
                // default text style
              ),
            ),
            Spacer(),
            Align(
                alignment:Alignment.bottomCenter,
              child: CustomButton(
                isSmall: false, 
                btnText: 'Verify', 
                height: 49, 
                width: double.infinity, 
                isFilled: true, 
                isBlack: false, 
                onPressed: () => navigator.pushNamed('/verification')
              )
            )
          ],
        )
      
      );
    } else {
      return Container(
        padding: const EdgeInsets.fromLTRB(34, 244, 34, 50),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 203,
                width: 326,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: Svg(
                      'assets/images/loan-submitted.svg',
                    ),
                    fit: BoxFit.fitHeight,
                  ),
                )
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Loan submited!!',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 25,
                  height: 1.5,
                  fontWeight: FontWeight.w700
                ), // default text style
              ),
              const Text(
                'Wait for 3 works day',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 13,
                  height: 1.5,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF878787)
                ), // default text style
              ),
              const Spacer(),
              CustomButton(isSmall: false, btnText: 'Verify', height: 49, width: 303, isFilled: true, isBlack: false, onPressed: () => navigator.pushNamed('/verification'),)
            ],
          )
        
      );
    }
    
  }
}
