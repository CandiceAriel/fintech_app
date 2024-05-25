import 'package:fintech_app/layout/default.dart';
import 'package:fintech_app/widget/rounded_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoanDetailScreen extends StatefulWidget {
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
  State<LoanDetailScreen> createState() => _LoanDetailScreenState();
}

class _LoanDetailScreenState extends State<LoanDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 50),
      child: 
      Stack(
        children: [

          RoundedContainer(status: 'Active', text: 'Next Invoice 1 Mar 2024', wButton: false, withBg: true, loanDetail: true,),
          Positioned(
            bottom: 0,
            child: Container(
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
            )
            )
        ],
      )
    );
   
  }
}