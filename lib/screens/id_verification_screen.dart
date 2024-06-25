import 'package:fintech_app/bloc/loan/loan_bloc.dart';
import 'package:fintech_app/constants.dart';
import 'package:fintech_app/layout/default.dart';
import 'package:fintech_app/screens/loan_submitted.dart';
import 'package:fintech_app/widget/custom_button.dart';
import 'package:fintech_app/widget/custom_dropdown.dart';
import 'package:fintech_app/widget/verification/verify_laststep.dart';
import 'package:fintech_app/widget/verification/verify_payslip.dart';
import 'package:fintech_app/widget/verification/verify_passport.dart';
import 'package:fintech_app/widget/verification/verify_payment.dart';
import 'package:fintech_app/widget/verification/verify_proofliving.dart';
import 'package:fintech_app/widget/verification/verify_receipient.dart';
import 'package:fintech_app/widget/verification/verify_selfie.dart';
import 'package:fintech_app/widget/verification/verify_workpermit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class VerifyIdScreen extends StatefulWidget {
  int step;
  bool isDirection;
  String btnTxt;

  VerifyIdScreen({
    this.step = 0,
    this.isDirection = false,
    this. btnTxt = '',
    super.key
  });

   static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => DefaultScaffold(
        bodyWidget: VerifyIdScreen(),
        showAppBar: true,
        isShowLeading: true,
        isBodyScroll: false,
        withNavbar: false,
      )
    );
  }

  @override
  State<VerifyIdScreen> createState() => _VerifyIdScreenState();
}

class _VerifyIdScreenState extends State<VerifyIdScreen> {
  double _currentSliderValue = 20;
  final List<String> paymentMethodList = [
    'ABC Virtual Account',
    'DEF Virtual Account',
    'ABC Bank',
    'Transfer',
  ];
  String selectedMethod = '';
  bool isSelected = false ;

  void nextStep(){
    setState(() {
      if(widget.isDirection == false){
        widget.isDirection = true;
      } else {
        widget.isDirection = false;
      }
      widget.step++;  
    });
    print(widget.isDirection);
    print(widget.step.toString());
  }

  void next(){
    setState(() {
      widget.step++;  
    });
    print(widget.isDirection);
    print(widget.step.toString());
  }

  @override
  void initState() {
    // TODO: implement initState
    widget.step = 0;
    widget.isDirection = false;
    widget. btnTxt = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoanBloc(),
      child: BlocBuilder<LoanBloc,LoanState>(
        builder : (context, state) {
          return Container(
            height: MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - AppBar().preferredSize.height,
            width: double.infinity,
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Expanded(
                  //height: MediaQuery.of(context).size.height ,
                  // child: Column(
                  //   children: [
                  //     if( widget.step == 1)...[
                  //       VerifySelfieView(),
                        
                  //     ],
                  //     if(widget.step == 2)...[
                  //       StatefulBuilder(
                  //         builder: (BuildContext context, setState) {
                  //           return VerifyWorkPermitView(
                  //             isDirection: widget.isDirection,
                  //             onPressed: () => nextStep(),
                  //           );
                  //         }
                  //       ),
                  //     ],
                      
                      
                  //   ],
                  // )
                  child: IndexedStack(
                    index: widget.step,
                    children: [
                      //Selfie//
                      Column(
                        children: [
                          VerifySelfieView(),
                          Spacer(),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                              padding: EdgeInsets.fromLTRB(40, 0, 40, 50),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child:  CustomButton(
                                  isSmall: false, 
                                  btnText: !widget.isDirection ? 'Continue ' : 'Next',
                                  height: 49, 
                                  width: double.infinity, 
                                  isFilled: true, 
                                  isBlack: false, 
                                  onPressed: () => nextStep(),
                                )
                              )
                            ) ,
                          ),
                          
                        ]
                      ),
                        //Work Permit//
                      Column(
                        children: [
                          VerifyWorkPermitView(
                            isDirection: widget.isDirection,
                            onPressed: () => nextStep(),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.fromLTRB(40, 0, 40, 50),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child:  CustomButton(
                                isSmall: false, 
                                btnText: !widget.isDirection ? 'Continue ' : 'Next',
                                height: 49, 
                                width: double.infinity, 
                                isFilled: true, 
                                isBlack: false, 
                                onPressed: () => nextStep(),
                              )
                            )
                          ) ,
                        ]
                      ),
                      Column(
                        children: [
                          VerifyWorkPermitView(
                            isDirection: widget.isDirection,
                            onPressed: () => nextStep(),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.fromLTRB(40, 0, 40, 50),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child:  CustomButton(
                                isSmall: false, 
                                btnText: !widget.isDirection ? 'Continue ' : 'Next',
                                height: 49, 
                                width: double.infinity, 
                                isFilled: true, 
                                isBlack: false, 
                                onPressed: () => nextStep(),
                              )
                            )
                          ) ,
                        ]
                      ),
                      //   //Payment//
                        VerifyPaymentView(onPressed: () => next()),
                      //   //Passport//
                      Column(
                        children: [
                          VerifyPassportView(
                            isDirection: true,
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.fromLTRB(40, 0, 40, 50),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child:  CustomButton(
                                isSmall: false, 
                                btnText: !widget.isDirection ? 'Continue ' : 'Next',
                                height: 49, 
                                width: double.infinity, 
                                isFilled: true, 
                                isBlack: false, 
                                onPressed: () => nextStep(),
                              )
                            )
                          ) ,
                        ]
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          VerifyPassportView(
                            isDirection: widget.isDirection,
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.fromLTRB(40, 0, 40, 50),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child:  CustomButton(
                                isSmall: false, 
                                btnText: !widget.isDirection ? 'Continue ' : 'Next',
                                height: 49, 
                                width: double.infinity, 
                                isFilled: true, 
                                isBlack: false, 
                                onPressed: () => nextStep(),
                              )
                            )
                          ),
                        ]
                      ),
                      // //ProofLiving
                      Column(
                        children: [
                          VerifyProofLivingView(
                            isDirection: true
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.fromLTRB(40, 0, 40, 50),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child:  CustomButton(
                                isSmall: false, 
                                btnText: 'Next',
                                height: 49, 
                                width: double.infinity, 
                                isFilled: true, 
                                isBlack: false, 
                                onPressed: () => nextStep(),
                              )
                            )
                          ),
                        ]
                      ),
                      Column(
                        children: [
                          VerifyProofLivingView(
                            isDirection: widget.isDirection
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.fromLTRB(40, 0, 40, 50),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child:  CustomButton(
                                isSmall: false, 
                                btnText: 'Continue ',
                                height: 49, 
                                width: double.infinity, 
                                isFilled: true, 
                                isBlack: false, 
                                onPressed: () => nextStep(),
                              )
                            )
                          ),
                        ]
                      ),
                      // //Payslip
                      Column(
                        children: [
                          VerifyPayslipView(
                            isDirection: widget.isDirection
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.fromLTRB(40, 0, 40, 50),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child:  CustomButton(
                                isSmall: false, 
                                btnText: 'Next',
                                height: 49, 
                                width: double.infinity, 
                                isFilled: true, 
                                isBlack: false, 
                                onPressed: () => nextStep(),
                              )
                            )
                          ),
                        ]
                      ),
                      Column(
                        children: [
                          VerifyPayslipView(
                            isDirection: widget.isDirection
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.fromLTRB(40, 0, 40, 50),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child:  CustomButton(
                                isSmall: false, 
                                btnText: 'Continue ',
                                height: 49, 
                                width: double.infinity, 
                                isFilled: true, 
                                isBlack: false, 
                                onPressed: () => nextStep(),
                              )
                            )
                          ),
                        ]
                      ),
                      ListView(
                        children: [
                          BlocProvider(
                            create: (context) {
                              return LoanBloc();
                            },
                            child: VerifyReceipientView()
                          ),
                          //Spacer(),
                          Padding(
                            padding: EdgeInsets.fromLTRB(40, 0, 40, 50),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child:  CustomButton(
                                isSmall: false, 
                                btnText: 'Next',
                                height: 49, 
                                width: double.infinity, 
                                isFilled: true, 
                                isBlack: false, 
                                onPressed: () => nextStep(),
                              )
                            )
                          ),
                          
                        ]
                      ),
                      ListView(
                        children: [
                          BlocProvider(
                            create: (context) {
                              return LoanBloc();
                            },
                            child: VerifyLastStepView()
                          ),
                          SizedBox(
                            height: 69,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(40, 0, 40, 50),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child:  CustomButton(
                                isSmall: false, 
                                btnText: 'Submit Loan',
                                height: 49, 
                                width: double.infinity, 
                                isFilled: true, 
                                isBlack: false, 
                                onPressed: () => navigator.pushNamed('/loansubmitted'),
                              )
                            )
                          ),
                          
                        ]
                      ),
                    ],
                  ),
                )
              ],
            )
          );
        }
      )
    );
    //         )
    //   )
    // );
   
   
  }
}