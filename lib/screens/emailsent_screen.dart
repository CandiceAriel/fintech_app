import 'package:fintech_app/widget/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';


class EmailverificationScreen extends StatelessWidget {
  const EmailverificationScreen({Key? key}) : super(key: key);

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const EmailverificationScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(
            top: 62,
            left: 22,
            right: 22
          ),
          child: Center(
            child: Text(
              "Email Verification Sent",
              style: TextStyle(
                color: Color(0xFF4D4D4D),
                fontWeight: FontWeight.w800,
                fontFamily: 'Nunito Sans',
                fontSize: 27,
                height: 2
              ),
              textAlign: TextAlign.center,
            ),
          )
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 15
          )
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30
          ),
          child: Center(
            child: Text(
              "A email has been sent to you!\nPlease check your email inbox/spam\nfor confirmation email and follow\nthe instructions stated in the email.",
              style: TextStyle(
                color: Color(0xFFB5B5B5),
                fontWeight: FontWeight.w400,
                fontFamily: 'NunitoSans',
                fontSize: 16,
                height: 1.24
              ),
              textAlign: TextAlign.center,
            ),
          )
        ),
         const Padding(
          padding: EdgeInsets.only(
            bottom: 65
          )
        ),
        SizedBox(
          height: 132,
          width: 223,
          child: SvgPicture.asset(
            'assets/images/mail_icon.svg',
            fit: BoxFit.scaleDown
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            bottom: 212
          )
        ),
        //CustomButton(btnText: 'Close', onPressed: () => Navigator.pop(context))
      ],
    );
  }
}
