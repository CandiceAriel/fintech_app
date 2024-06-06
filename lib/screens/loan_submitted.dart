import 'package:fintech_app/constants.dart';
import 'package:fintech_app/layout/default.dart';
import 'package:fintech_app/widget/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class LoanSubmittedScreen extends StatelessWidget {
  const LoanSubmittedScreen({Key? key}) : super(key: key);

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => DefaultScaffold(
        bodyWidget: const LoanSubmittedScreen(),
        showAppBar: true,
        isBodyScroll: false,
        isShowLeading: false,
    withNavbar: false,
      )
    );
  }

  @override
  Widget build(BuildContext context) {

    return LoanSubmittedView();
   
  }
}



class LoanSubmittedView extends StatelessWidget {
  const LoanSubmittedView({Key? key}) : super(key: key);

  void _goToRoute(context) {
    Navigator.of(context).pushNamed('/');
  }

  @override
  Widget build(BuildContext context) {

    return Align(
      alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(
              height: 240,
            ),
            Container(
                    margin: const EdgeInsets.only(bottom: 50),
                    height: 199,
                    width: 272,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: Svg('assets/images/loan_submitted.svg',),
                        fit: BoxFit.contain,
                      ),
                    )
                ),
                 const Text(
                    'Loan submited!', 
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 25, 
                      height: 1.5,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF000000)
                    ),// default text style
                  ),
                  const Text(
                    'Wait for 3 works day', 
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13, 
                      height: 1.5,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF878787)
                    ),// default text style
                  ),
           
                 
              
             
              Spacer(),
              Align(
                alignment:Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(45, 0, 45, 50),
                  child:  CustomButton(btnText: 'OK', height: 49, width: double.infinity, isFilled: true, isBlack: false, isSmall: false, onPressed: () => _goToRoute(context)),
                )
                
              )
            
            ],
          ),
        
    );
   
  }
}

