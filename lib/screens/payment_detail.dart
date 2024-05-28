// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fintech_app/bloc/loan/loan_bloc.dart';
import 'package:fintech_app/layout/default.dart';
import 'package:fintech_app/models/loan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentDetailScreen extends StatefulWidget {
  String bank;

  PaymentDetailScreen({
    this.bank = '',
    super.key
  });

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => DefaultScaffold(
        bodyWidget: PaymentDetailScreen(),
        isShowLeading: false,
        showAppBar: true,
        isBodyScroll: false,
        withNavbar: false,
      )
    );
  }

  @override
  State<PaymentDetailScreen> createState() => _PaymentDetailScreenState();
}

class _PaymentDetailScreenState extends State<PaymentDetailScreen> {
  
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoanBloc(),
      child: BlocBuilder<LoanBloc,LoanState>(
        builder : (context, state) {
          return Stack(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: const Color(0xFFCFCECE)
                    )
                  ),
                  child: Column(
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Bank',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              height: 1.5,
                              color: Color(0xFF000000)
                            )
                          ),
                          Text(
                            'ABC Bank',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              height: 1.5,
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w600
                            )
                          )
                        ]
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Card Number',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              height: 1.5,
                              color: Color(0xFF000000)
                            )
                          ),
                          Text(
                            '1234-4567-****-**90',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              height: 1.5,
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w600
                            )
                          )
                        ]
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Name',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              height: 1.5,
                              color: Color(0xFF000000)
                            )
                          ),
                          Text(
                            'John Wasington',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              height: 1.5,
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w600
                            )
                          )
                        ]
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Invoice',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              height: 1.5,
                              color: Color(0xFF000000)
                            )
                          ),
                          Text(
                            '\$ 11,200',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              height: 1.5,
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w600
                            )
                          )
                        ]
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Minimum Payment',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              height: 1.5,
                              color: Color(0xFF000000)
                            )
                          ),
                          Text(
                            '\$ 11,200',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              height: 1.5,
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w600
                            )
                          )
                        ]
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Processing Fees',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              height: 1.5,
                              color: Color(0xFF000000)
                            )
                          ),
                          Text(
                            '\$ 11,200',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              height: 1.5,
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w600
                            )
                          )
                        ]
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text(
                          'Amount to be paid',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            height: 1.5,
                            fontWeight: FontWeight.w400
                          ),
                        ),

                      ],
                    ),
                  )
                  
                )
              ]
            ),
              Positioned(
                bottom: 0,
                child: Container(
                  //height: 79,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.2),
                        offset: Offset(0, -3),
                        blurRadius: 6,
                        spreadRadius: 0,
                      )
                    ],
                    color: Color(0xFFFFFFFF),  
                  ),
                  child: Row(
                    children: [
                      RichText(
                        text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Outstanding Balance\n",
                            style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              height: 1.5,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF646464)
                            ),
                          ),
                          TextSpan(
                            text: '\$ 11,200',
                            style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              height: 1.5,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF000000)
                            ),
                          ),
                        ],
                      ),
                      
                    ),
                    ],
                  ),
                )
              )
            ],
          );
        }
      )
        
        
    );
  }
}