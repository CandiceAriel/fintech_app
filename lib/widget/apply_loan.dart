import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fintech_app/bloc/loan/loan_bloc.dart';
import 'package:fintech_app/constants.dart';
import 'package:fintech_app/layout/default.dart';
import 'package:fintech_app/models/drop_list.dart';
import 'package:fintech_app/screens/payment_detail_screen.dart';
import 'package:fintech_app/widget/custom_button.dart';
import 'package:fintech_app/widget/custom_dropdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class ApplyLoanView extends StatefulWidget {
  final Function onPressed;
  //final int step;

  const ApplyLoanView({
    required this.onPressed,
    //required this.step,
    super.key
  });

  @override
  State<ApplyLoanView> createState() => _ApplyLoanViewState();
}

class _ApplyLoanViewState extends State<ApplyLoanView> {
  double _currentLoanAmount = 0;
  double _currentPaymentDuration = 3;

  void goToDetail(method) {
    navigator.pushNamed(
      '/paymentdetail',
      arguments:  {
        'method': method,
        'v2': 'data2',
        'v3': 'data3',
      },
    );
    // Navigator.push(context, MaterialPageRoute(
    //   builder: (context) => PaymentDetailScreen(bank: selectedValue),
    //   settings: RouteSettings(name: '/paymentdetail')
    // ));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return LoanBloc();
      },
      child: BlocBuilder<LoanBloc,LoanState>(
        builder: (context,state) {
          return Container(
      //padding: EdgeInsets.symmetric(horizontal: 25, vertical: 150),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: Svg("assets/images/background.svg"),
              ),
            ),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                    Container(
                        constraints: const BoxConstraints(
                          maxHeight: 600
                        ),
                        // height: MediaQuery.of(context).size.height - ,
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
                        child: Column(
                          children: [
                            Container(
                              constraints: const BoxConstraints(maxHeight: 94),
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
                                      "Try to apply loan?",
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 20,
                                        height: 1.5,
                                        color: Color(0xFFFFFFFF),
                                        fontWeight: FontWeight.w700
                                      ),
                                    ),
                                    Text(
                                      "Available for custom amount and payment",
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
                            Expanded(
                              //padding: EdgeInsets.symmetric(horizontal: 50),
                              child:  Padding(
                                padding: EdgeInsets.fromLTRB(50, 70, 50, 50),
                                child: Column(
                                  children: [
                                    const Text(
                                      "Loan Amount",
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 15,
                                          height: 1.5,
                                          color: Color(0xFF000000),
                                          fontWeight: FontWeight.w500),
                                    ),
                                    FittedBox(
                                      fit: BoxFit.contain,
                                      child: Row(
                                        children: [
                                          Align(
                                            alignment: Alignment.topCenter,
                                            child: Text(
                                              "\$",
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 16,
                                                height: 1.5,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF000000)
                                              ),
                                            ),
                                          ),
                                          Text(
                                            _currentLoanAmount.round().toString(),
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
                                    Slider(
                                      value: _currentLoanAmount,
                                      max: 1000000,
                                      divisions: 1000000,
                                      label: _currentLoanAmount.round().toString(),
                                      onChanged: (double value) {
                                        setState(() {
                                          _currentLoanAmount = value;
                                        });
                                      },
                                    ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  const Text(
                                    "Duration",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 15,
                                        height: 1.5,
                                        color: Color(0xFF000000),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  FittedBox(
                                    fit: BoxFit.contain,
                                    child: RichText(
                                      text: TextSpan(
                                        text: _currentPaymentDuration.round().toString(),
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 28,
                                            height: 1.5,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF000000)
                                          ),
                                        children: const <TextSpan>[
                                          TextSpan(
                                            text:  "month",
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 16,
                                              height: 1.5,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF000000)
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ),
                                  Slider(
                                    value: _currentPaymentDuration,
                                    max: 12,
                                    divisions: 12,
                                    label: _currentPaymentDuration.round().toString(),
                                    onChanged: (double value) {
                                      setState(() {
                                        _currentPaymentDuration = value;
                                      });
                                    },
                                  ),
                                  Spacer(),
                                  // CustomButton(
                                  //   isSmall: false,
                                  //   btnText: 'Pay',
                                  //   height: 43,
                                  //   width: double.maxFinite,
                                  //   isFilled: true,
                                  //   isBlack: false,
                                  //   onPressed: () => { context.read<LoanBloc>().add(FormSubmitted()) },
                                  // )
                                  _PayButton(onPressed: widget.onPressed)
                                ],
                            ),
                          )
                        )
                      ],
                    )
                  ),
                ]
              )
            )
          );
        }
      )
      
    );
  }
}

class _PayButton extends StatelessWidget {
  final Function onPressed;
  String? selectedVal;

  _PayButton({
    super.key,
    this.selectedVal,
    required this.onPressed,
  });


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoanBloc, LoanState>(
      builder: (context, state) {
        return CustomButton(
          isSmall: false,
          btnText: 'Pay',
          height: 43,
          width: double.maxFinite,
          isFilled: true,
          isBlack: false,
          onPressed: () => { 
            //context.read<LoanBloc>().add(PaymentMethodChanged(selectedMethod: selecedVal)),
            // context.read<LoanBloc>().add(FormSubmitted()) ,
            // navigator.pushNamed(
            //   '/paymentdetail',
            //   arguments:  {
            //     'method': selectedVal,
            //     'v2': 'data2',
            //     'v3': 'data3',
            //   },
            // )
            onPressed()
          },
        );
        
      },
    );
  }
}