import 'package:fintech_app/layout/default.dart';
import 'package:fintech_app/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

enum VerifyingStep { step1, step2, step3, step4, step5, step6, step7, submitted }

class VerifyIdScreen extends StatefulWidget {
  int step;

  VerifyIdScreen({
    this.step = 1,
    super.key
  });

   static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => DefaultScaffold(
          bodyWidget: VerifyIdScreen(),
          showAppBar: true,
          isBodyScroll: true,
          withNavbar: false,
      )
    );
  }

  @override
  State<VerifyIdScreen> createState() => _VerifyIdScreenState();
}

class _VerifyIdScreenState extends State<VerifyIdScreen> {
  @override
  Widget build(BuildContext context) {
   return Column(
      children: [
        Builder(
            builder: (BuildContext context) {
              if (widget.step == 1) {
                return _step1View();  
              } else {
                return TextButton(
                  onPressed: () {
                    // Navigate to login screen
                  },
                  child: Text('Login'),
                );
              }
            },
          ),
        
      ],
    );
  }
}

class _step1View extends StatelessWidget {
  const _step1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // height: MediaQuery.of(context).size.height,
      // width: MediaQuery.of(context).size.width,
      // padding:EdgeInsets.symmetric(
      //   horizontal: 38,
      //   vertical: 50
      // ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(38, 0, 34, 50),
        child:  Column(
          children: [
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
            Spacer(),
            CustomButton(
                isSmall: false, 
                btnText: 'Verify', 
                height: 49, 
                width: double.infinity, 
                isFilled: true, 
                isBlack: false, 
                // onPressed: () => navigator.pushNamed('/verification')
              )
          ],
        ),
      )
      
     
    );
  }
}
