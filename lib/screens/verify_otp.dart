import 'package:fintech_app/layout/default.dart';
import 'package:fintech_app/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class VerifyOtpScreen extends StatefulWidget {
  String email;
  bool isFinished;

  VerifyOtpScreen({
    Key? key,
    this.email = 'abcd@gmail.com',
    this.isFinished= false
  }) : super(key: key);

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => DefaultScaffold(
        bodyWidget: VerifyOtpScreen(),
        showAppBar: false,
        isBodyScroll: false,
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
      return Container(
        padding: EdgeInsets.fromLTRB(34, 50, 34, 50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Verification!',
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
              SizedBox(
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
              SizedBox(
                height: 50,
              ),
              RichText(
                text: TextSpan(
                children: [
                  TextSpan(
                    text: "The code sent to ",
                    style: const TextStyle(
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
            SizedBox(
              height: 30,
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
            SizedBox(
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
            // SizedBox(
            //   height: 109,
            // ),
            Spacer(),
            CustomButton(btnText: 'Verify', height: 49, width: 303, isFilled: true)
          ],
        )
      )
      );
    } else {
      return Container(
        padding: EdgeInsets.fromLTRB(34, 244, 34, 50),
        child: Center(
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
              SizedBox(
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
              Spacer(),
              CustomButton(btnText: 'Verify', height: 49, width: 303, isFilled: true)
            ],
          )
        )
      );
    }
    
  }
}
