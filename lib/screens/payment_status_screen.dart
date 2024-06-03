import 'package:fintech_app/constants.dart';
import 'package:fintech_app/layout/default.dart';
import 'package:fintech_app/widget/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class PaymenyStatusScreen extends StatelessWidget {
  const PaymenyStatusScreen({Key? key}) : super(key: key);

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => DefaultScaffold(
        bodyWidget: const PaymenyStatusScreen(),
        showAppBar: true,
        isBodyScroll: false,
        isShowLeading: false,
    withNavbar: false,
      )
    );
  }

  @override
  Widget build(BuildContext context) {

    return PaymenyStatusView();
   
  }
}



class PaymenyStatusView extends StatelessWidget {
  const PaymenyStatusView({Key? key}) : super(key: key);

  void _goToRoute(context) {
    Navigator.of(context).pushNamed('/');
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      
      child: Padding(
        padding: EdgeInsets.fromLTRB(71, 100, 71, 50),
        child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 50),
              height: 199,
              width: 272,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: Svg('assets/images/round-blue-check.svg',),
                  fit: BoxFit.contain,
                ),
              )
            ),
                  const Text(
                    'Thankyou!', 
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 35, 
                      height: 1.5,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF0082FF)
                    ),// default text style
                  ),
                  const Text(
                    'Payment was successful', 
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15, 
                      height: 1.5,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF878787)
                    ),// default text style
                  ),
              Spacer(),
              Align(
                alignment:Alignment.bottomCenter,
                child: CustomButton(btnText: 'Back to Home', height: 49, width: 303, isFilled: true, isBlack: false, isSmall: false, onPressed: () => _goToRoute(context))
              )
            
            ],
          )
        )
    );
   
  }
}

