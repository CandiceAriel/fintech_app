import 'package:fintech_app/layout/default.dart';
import 'package:fintech_app/widget/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class RequestPaymentScreen extends StatelessWidget {
  const RequestPaymentScreen({super.key});
  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => DefaultScaffold(
        bodyWidget: const RequestPaymentScreen(),
        showAppBar: true,
        isBodyScroll: false,
        isShowLeading: false,
        withNavbar: false,
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return const RequestPaymentView();
  }
}

class RequestPaymentView extends StatelessWidget {
  const RequestPaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container (
      height: MediaQuery.of(context).size.height - ( kToolbarHeight+24) ,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: Svg("assets/images/background.svg"),
        ),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Container(
          constraints: const BoxConstraints(
            maxHeight: 541
          ),
          width: MediaQuery.of(context).size.width - 50,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.3),
                offset: Offset(0, 30),
                blurRadius: 30,
                spreadRadius: 0,
              )
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
             color: Color(0xFFFFFFFF),  
          ),
          child:  IntrinsicWidth(
            child: Column(
              children: [
                Container(
                   constraints: const BoxConstraints(
                    maxHeight: 94
                  ),
                  clipBehavior: Clip.hardEdge,
                  padding: const EdgeInsets.fromLTRB(32, 20, 32, 20),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(0, 130, 255, 1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: const Center(
                    child: Column(
                      children: [
                        Text(
                          "Payment",
                          style: TextStyle( 
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            height: 1.5,
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w700
                          ),
                        ),
                        Text(
                          "Enter your amount to complete your purchase",
                          style: TextStyle( 
                            fontFamily: 'Poppins',
                            fontSize: 11,
                            height: 1.5,
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ],
                    )
                  )
                 
                  
                ),
                Container(
                  constraints: const BoxConstraints(
                    maxWidth: 541
                  ),
                  clipBehavior: Clip.hardEdge,
                  padding: const EdgeInsets.fromLTRB(32, 20, 32, 20),
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    // borderRadius: const BorderRadius.all(
                    //   Radius.circular(),
                    // ),
                  ),
                  child: const Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Amount",
                          style: TextStyle( 
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            height: 1.5,
                            color: Color(0xFF000000),
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        FittedBox(
                          fit: BoxFit.contain,
                          child:  Row(
                            children: [
                              Text(
                                "\$",
                                style: TextStyle( 
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  height: 1.5,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF000000)
                                ),
                              ),
                                 
                                
                              Text(
                                "265,000",
                                style: TextStyle( 
                                  fontFamily: 'Poppins',
                                  fontSize: 28,
                                  height: 1.5,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF000000)
                                ),
                              ),
                            ],
                          )
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "Payment Method",
                          style: TextStyle( 
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            height: 1.5,
                            color: Color(0xFF000000),
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        SizedBox(
                          height: 70,
                        ),
                        
                        CustomButton(btnText: 'Pay', height: 43, width: 243, isFilled: true)
                      ],
                    )
                  )
                 
                  
                ),
               
              ],
            ),
          )
        )
      ),
    );
  }
}