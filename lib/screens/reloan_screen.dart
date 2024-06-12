import 'package:fintech_app/bloc/loan/loan_bloc.dart';
import 'package:fintech_app/constants.dart';
import 'package:fintech_app/layout/default.dart';
import 'package:fintech_app/screens/loan_submitted.dart';
import 'package:fintech_app/widget/apply_loan.dart';
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

class ReloanScreen extends StatefulWidget {
  int step;
  bool isDirection, isShow;
  String btnTxt;

  ReloanScreen({
    this.step = 0,
    this.isDirection = false,
    this.isShow = false,
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
    navigator.pushNamed('/reloanverification');
    print(widget.isDirection);
    print(widget.step.toString());
  }

  @override
  void initState() {
    // TODO: implement initState
    widget.step = 0;
    widget.isDirection = false;
    widget. btnTxt = '';
    widget.isShow = false;

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