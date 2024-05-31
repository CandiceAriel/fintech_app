// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fintech_app/bloc/loan/loan_bloc.dart';
import 'package:fintech_app/constants.dart';
import 'package:fintech_app/layout/default.dart';
import 'package:fintech_app/models/loan.dart';
import 'package:fintech_app/widget/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        isBodyScroll: true,
        withNavbar: false,
      )
    );
  }

  @override
  State<PaymentDetailScreen> createState() => _PaymentDetailScreenState();
}

class _PaymentDetailScreenState extends State<PaymentDetailScreen> {
  
  final List<String> paymentMethod = [
    'ABC Virtual Account',
    'DEF Virtual Account',
    'ABC Bank',
    'Transfer',
  ];
  String? selectedValue;
  
  @override
  Widget build(BuildContext context) {
    Map arg = ModalRoute.of(context)?.settings.arguments as Map;
    return Scaffold(
      appBar: _createAppBar(context, false, 'Supreme'),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child:  BlocProvider(
                create: (_) => LoanBloc(),
                child: BlocBuilder<LoanBloc,LoanState>(
                  builder : (context, state) {
                    return Container(
                      height: MediaQuery.of(context).size.height - kToolbarHeight,
                      width: MediaQuery.of(context).size.width,
                      child:  Column(
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
                              Container(
                                padding: EdgeInsets.all(20),
                                width: double.infinity,
                                // decoration: BoxDecoration(
                                //   border: Border.all(
                                //     width: 1,
                                //     color: const Color(0xFFCFCECE)
                                //   )
                                // ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Amount to be paid',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 15,
                                          height: 1.5,
                                          fontWeight: FontWeight.w400
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        // constraints: BoxConstraints(
                                        //   maxHeight: 98
                                        // ),
                                        padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color.fromRGBO(0, 0, 0, 0.25),
                                              blurRadius: 5,
                                              offset: Offset(0, 0)
                                            )
                                          ],
                                          color: Color(0xFFFFFFFF),
                                        ),
                                        child: Column (
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Payment Amount',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                                height: 1.5,
                                                fontWeight: FontWeight.w400
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                            SizedBox(
                                              child: TextFormField(
                                                decoration: const InputDecoration(
                                                  border: UnderlineInputBorder(),
                                                  enabledBorder: UnderlineInputBorder(      
                                                    borderSide: BorderSide(color: Color(0xFF0082FF)),   
                                                  ),  
                                                  focusedBorder: UnderlineInputBorder(
                                                    borderSide: BorderSide(color: Color(0xFF0082FF)),
                                                  ),
                                                  isDense: true,
                                                  contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                                                ),
                                                style: TextStyle(
                                                  fontSize: 12.0, 
                                                  height: 1.5, 
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600
                                                ),
                                              ),
                                            )
                                            
                                            
                                          ],

                                          
                                        )
                                      
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Text(
                                        'Payment Method',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 15,
                                          height: 1.5,
                                          fontWeight: FontWeight.w400
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                              width: double.maxFinite,
                                              height: 38,
                                              child: DropdownButtonHideUnderline(
                                                child: DropdownButton2<String>(
                                                  isExpanded: true,
                                                  hint: Text(
                                                    arg['method'],
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      color: Theme.of(context).hintColor,
                                                    ),
                                                  ),
                                                  items: paymentMethod.map((String item) => DropdownMenuItem<String>(
                                                    value: item,
                                                    child: Text(
                                                      item,
                                                      style: const TextStyle(
                                                        fontSize: 14,
                                                      ),
                                                      ),
                                                  )).toList(),
                                                  value: selectedValue,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      selectedValue = value;
                                                    });
                                                    
                                                    print(value);
                                                  },
                                                  buttonStyleData: ButtonStyleData(
                                                    padding: EdgeInsets.symmetric(horizontal: 16),
                                                    height: 40,
                                                    width: 140,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(10),
                                                      // border: Border.all(
                                                      //   color: Color.fromRGBO(179, 179, 179, 1),
                                                      //   width: 2.46
                                                      // ),
                                                      color: Color(0xFFFFFFFF),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Color.fromRGBO(0, 0, 0, 0.25),
                                                          offset: Offset(0, 0),
                                                          blurRadius: 5,
                                                          spreadRadius: 0,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  dropdownStyleData: const DropdownStyleData(
                                                    maxHeight: 120,
                                                  ),
                                                  menuItemStyleData: const MenuItemStyleData(
                                                    height: 40,
                                                  ),
                                                ),
                                              )
                                            ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        'Payment Summary',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 15,
                                          height: 1.5,
                                          fontWeight: FontWeight.w400
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "Subtotal",
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 15,
                                                height: 1.5,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFF000000)
                                              ),
                                            ),
                                            WidgetSpan(
                                              child: SizedBox(
                                                width: 127,
                                              )
                                            ),
                                            TextSpan(
                                              text: "\$ 5,600",
                                              style: TextStyle(
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
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "Processing Fees",
                                              style: const TextStyle( 
                                                fontFamily: 'Poppins',
                                                fontSize: 15,
                                                height: 1.5,
                                                color: Color(0xFF000000)
                                              ),
                                            ),
                                            WidgetSpan(
                                              child: SizedBox(
                                                width: 70,
                                              )
                                            ),
                                            TextSpan(
                                              text: "\$ 5,600",
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
                                
                              
                            ),
                         
                          
                            
                          ],
                        )
                    );
                  
                  }
                )
                  
                  
              )
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
                    Spacer(),
                    CustomButton(btnText: 'Pay', isFilled: true, isBlack: false, isSmall: true, onPressed: () => navigator.pushNamed('/paymentstatus'),)
                  ],
                ),
              )
            )
          ],
        )
        
      )
      
    );
   
  }
}

AppBar _createAppBar(context, isShowLeading, title) {
  return AppBar(
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/bg-light.png"),
        ),
      ),
    ),
    title: Text(
      title,
      style: const TextStyle(
        color: Color(0xFFFFFFFF),
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        fontSize: 25,
        height: 1.5
      ),
    ),
    centerTitle: true,
    backgroundColor: const Color(0xFF0082FF),
    leading: Builder(builder: (BuildContext context) {
      return isShowLeading
        ? GestureDetector(
          child: SvgPicture.asset(
            'assets/images/hamburger-menu.svg',
            height: 21, 
            width: 15, 
            fit: BoxFit.scaleDown
          )
        )
        : GestureDetector(
          child: SvgPicture.asset(
            'assets/images/chevron-left.svg',
            height: 21, 
            width: 15, 
            fit: BoxFit.scaleDown
          ),
          onTap: () => navigator.pop(),
        );
    }),
    actions: [
      Padding(
        padding: EdgeInsets.only(right: 16.0),
        child: GestureDetector(   
          child: SvgPicture.asset(
            'assets/images/notification.svg',
            height: 21, 
            width: 15, 
            fit: BoxFit.fill
          )
        )
      )
    ],
  );
}