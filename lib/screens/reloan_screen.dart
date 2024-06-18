import 'package:fintech_app/bloc/loan/loan_bloc.dart';
import 'package:fintech_app/constants.dart';
import 'package:fintech_app/layout/default.dart';
import 'package:fintech_app/screens/loan_submitted.dart';
import 'package:fintech_app/widget/apply_loan.dart';
import 'package:fintech_app/widget/custom_button.dart';
import 'package:fintech_app/widget/custom_button_small.dart';
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

class ReloanScreen extends StatefulWidget {
  int step;
  bool isDirection;
  String btnTxt;

  ReloanScreen({
    this.step = 0,
    this.isDirection = false,
    this. btnTxt = '',
    super.key
  });

   static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => DefaultScaffold(
        bodyWidget: ReloanScreen(),
        showAppBar: true,
        isShowLeading: true,
        isBodyScroll: false,
        withNavbar: false,
      )
    );
  }

  @override
  State<ReloanScreen> createState() => _ReloanScreenState();
}

class _ReloanScreenState extends State<ReloanScreen> {
  double _currentSliderValue = 20;
  final List<String> paymentMethodList = [
    'ABC Virtual Account',
    'DEF Virtual Account',
    'ABC Bank',
    'Transfer',
  ];
  String selectedMethod = '';
  bool isSelected = false ;
  bool isShow = false;
  bool isHigherAmountDialog = false;

  void nextStep(){
    setState(() {
      if(widget.isDirection == false){
        widget.isDirection = true;
      } else {
        widget.isDirection = false;
      }
      widget.step++;  
    });
    // print(widget.isDirection);
    // print(widget.step.toString());
  }

  void next(){
    //navigator.pushNamed('/reloanverification');
    setState(() {
      isShow = !isShow;
    });

    if(isShow = true){
      showDialog(
        //if set to true allow to close popup by tapping out of the popup
        barrierDismissible: false, 
        context: context,
        builder: (BuildContext context) => AlertDialog(
          content: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const  Text(
              "Are you an spass user?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                height: 1.5,
                fontWeight: FontWeight.w500,
                color: Color(0xFF000000) 
              ),
            ),
          ),
          actions: [  
            CustomButton(
              isSmall: false, 
              isFilled: true, 
              btnText: 'Yes', 
              isBlack: false, 
              width: double.infinity,
              onPressed:() => {
                setState(() {
                  isHigherAmountDialog = !isHigherAmountDialog;
                  isShow = !isShow;
                }),
                Navigator.pop(context),
                showDialog(
                  context: context, 
                  builder: (BuildContext context) => AlertDialog(
                    content: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: const  Text(
                        "Do you want to \nget higher amount?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          height: 1.5,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF000000) 
                        ),
                        
                      ),
                    ),
                    actions: [  
                      CustomButton(
                        isSmall: false, 
                        isFilled: true, 
                        btnText: 'Yes', 
                        isBlack: false, 
                        width: double.infinity,
                        onPressed:() => {
                          setState(() {
                            isHigherAmountDialog = false;
                            isShow = false;
                          }),
                          print(isHigherAmountDialog),
                          print(isShow),
                          navigator.pushNamed('/reloanverification')
                          
                        },
                      ),
                      SizedBox(height: 15),
                      CustomButton(isSmall: false, isFilled: false, btnText: 'No', isBlack: false,  width: double.infinity,)
                    ]
                  )
                  
                )
              },
            ),
            SizedBox(height: 15),
            CustomButton(isSmall: false, isFilled: false, btnText: 'No', isBlack: false,  width: double.infinity,)
          ],
          elevation: 24,
        ),
        // builder: (context) {
        //   String contentText = "Are you an spass user?";
        //   return StatefulBuilder(
        //     builder: (context, setState) {
        //       return AlertDialog(
        //         content: Text(contentText),
        //         actions: <Widget>[
        //           CustomButton(
        //             isSmall: false, 
        //             isFilled: true, 
        //             btnText: 'Yes', 
        //             isBlack: false, 
        //             width: double.infinity,
        //             onPressed:() => {
        //               setState(() {
        //                 contentText = "Do you want to \nget higher amount?";
        //                 isHigherAmountDialog = !isHigherAmountDialog;
        //                 print(isHigherAmountDialog);
        //               }),
                      
        //               if(isHigherAmountDialog = true){
        //                 navigator.pushNamed('/reloanverification')
        //               }
        //             },
        //           ),
        //           SizedBox(
        //             height: 15,
        //           ),
        //           CustomButton(
        //             isSmall: false, 
        //             isFilled: false, 
        //             btnText: 'No', 
        //             isBlack: false, 
        //             width: double.infinity,
        //             onPressed:() => {
        //               Navigator.pop(context),
        //             },
        //           ),
        //         ],
        //       );
        //     },
        //   );
        // },
      );
    }
    
    print(isShow);
    print(isHigherAmountDialog);
  }

  @override
  void initState() {
    // TODO: implement initState
    widget.step = 0;
    widget.isDirection = false;
    widget. btnTxt = '';
    // isShow = false;
    // isHigherAmountDialog = false;
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
                  child: ApplyLoanView(onPressed: () => next()),
                )
              ],
            )
          );
        }
      )
    );
  }
}