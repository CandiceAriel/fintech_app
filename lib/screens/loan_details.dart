import 'package:fintech_app/bloc/loan/loan_bloc.dart';
import 'package:fintech_app/layout/default.dart';
import 'package:fintech_app/widget/rounded_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoanDetailScreen extends StatelessWidget {
  const LoanDetailScreen({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => DefaultScaffold(
        bodyWidget: const LoanDetailScreen(),
        isShowLeading: false,
        showAppBar: true,
        isBodyScroll: false,
        withNavbar: false,
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoanBloc(),
      child: const LoanDetailView()
    );
    
   
  }
}

class LoanDetailView extends StatefulWidget {
  const LoanDetailView({super.key});

  @override
  State<LoanDetailView> createState() => _LoanDetailViewState();
}

class _LoanDetailViewState extends State<LoanDetailView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoanBloc, LoanState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 50),
          child: Stack(
            children: [
              Column(
                children: [
                  RoundedContainer(status: 'Active', text: 'Next Invoice 1 Mar 2024', wButton: false, withBg: true, loanDetail: true,),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
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
                              'Loan No.',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                height: 1.5,
                                color: Color(0xFF000000)
                              )
                            ),
                            Text(
                              '00067823498',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                height: 1.5,
                                color: Color(0xFF000000)
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
                              'Loan Date',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                height: 1.5,
                                color: Color(0xFF000000)
                              )
                            ),
                            Text(
                              state.loan.date,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                height: 1.5,
                                color: Color(0xFF000000)
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
                              'Status',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                height: 1.5,
                                color: Color(0xFF000000)
                              )
                            ),
                            Text(
                              'Active',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                height: 1.5,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF000000)
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
                              'Due Date',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                height: 1.5,
                                color: Color(0xFF000000)
                              )
                            ),
                            Text(
                              '1 Feb 2024',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                height: 1.5,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF000000)
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
                              'Amount',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                height: 1.5,
                                color: Color(0xFF000000)
                              )
                            ),
                            Text(
                              '\$ 10,000',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                height: 1.5,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF000000)
                              )
                            )
                          ]
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 1,
                        color: const Color(0xFFCFCECE)
                      )
                    ),
                    child: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Principal',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                height: 1.5,
                                color: Color(0xFF000000)
                              )
                            ),
                            Text(
                              '\$ 400',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                height: 1.5,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF000000)
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
                              'Interest',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                height: 1.5,
                                color: Color(0xFF000000)
                              )
                            ),
                            Text(
                              '\$ 150',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                height: 1.5,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF000000)
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
                              'Due Date',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                height: 1.5,
                                color: Color(0xFF000000)
                              )
                            ),
                            Text(
                              '1 Feb 2024',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                height: 1.5,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF000000)
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
                              'Amount',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                height: 1.5,
                                color: Color(0xFF000000)
                              )
                            ),
                            Text(
                              '\$ 10,000',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                height: 1.5,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF000000)
                              )
                            )
                          ]
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Positioned(
                top: 776,
                child: Container(
                  height: 79,
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
          )
        );
      },
    );
  }
}

    