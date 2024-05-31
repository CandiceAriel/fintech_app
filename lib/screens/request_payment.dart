import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fintech_app/bloc/loan/loan_bloc.dart';
import 'package:fintech_app/constants.dart';
import 'package:fintech_app/layout/default.dart';
import 'package:fintech_app/models/drop_list.dart';
import 'package:fintech_app/screens/payment_detail.dart';
import 'package:fintech_app/widget/custom_button.dart';
import 'package:fintech_app/widget/custom_dropdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
            ));
  }

  @override
  Widget build(BuildContext context) {
    return const RequestPaymentView();
  }
}

class RequestPaymentView extends StatefulWidget {
  const RequestPaymentView({super.key});

  @override
  State<RequestPaymentView> createState() => _RequestPaymentViewState();
}

class _RequestPaymentViewState extends State<RequestPaymentView> {
  double _currentSliderValue = 20;
  final List<String> paymentMethodList = [
    'ABC Virtual Account',
    'DEF Virtual Account',
    'ABC Bank',
    'Transfer',
  ];
  String selectedMethod = '';
  bool isSelected = false ;

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
            // alignment: Alignment.center,
           
            child: Container(
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
                              "Payment",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                  height: 1.5,
                                  color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Enter your amount to complete your purchase",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 11,
                                  height: 1.5,
                                  color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w500),
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
                              "Amount",
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
                                    Text(
                                      "\$",
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 16,
                                          height: 1.5,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF000000)),
                                    ),
                                    Text(
                                      _currentSliderValue.round().toString(),
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 28,
                                        height: 1.5,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF000000)
                                      ),
                                    ),
                                  ],
                                )),
                            const SizedBox(
                              height: 30,
                            ),
                             Slider(
                              value: _currentSliderValue,
                              max: 1000000,
                              divisions: 1000000,
                              label: _currentSliderValue.round().toString(),
                              onChanged: (double value) {
                                setState(() {
                                  _currentSliderValue = value;
                                });
                              },
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            const Text(
                              "Payment Method",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                height: 1.5,
                                color: Color(0xFF000000),
                                fontWeight: FontWeight.w500
                              ),
                            ),
                           
                            // SelectDropList(
                            //   optionItemSelected,
                            //   dropListModel,
                            //   (optionItem){
                            //     optionItemSelected = optionItem;
                            //     setState(() {

                            //     });
                            //   },
                            // ),
                          SizedBox(height: 15),
                          Container(
                            width: double.maxFinite,
                            height: 38,
                            child: CustomDropdown(
                              optionsItem: paymentMethodList, 
                              selectedValue: isSelected ? selectedMethod : paymentMethodList[0],
                              onChanged: (value) => {
                                setState(() {
                                  isSelected = true;
                                  selectedMethod = value;
                                }),
                                print(value)
                              }
                            ),
                            // child: DropdownButtonHideUnderline(
                            //   child: DropdownButton2<String>(
                            //     isExpanded: true,
                            //     hint: Text(
                            //       'Select Item',
                            //       style: TextStyle(
                            //         fontSize: 14,
                            //         color: Theme.of(context).hintColor,
                            //       ),
                            //     ),
                            //     items: paymentMethodList.map((String item) => DropdownMenuItem<String>(
                            //       value: item,
                            //       child: Text(
                            //         item,
                            //         style: const TextStyle(
                            //           fontSize: 14,
                            //         ),
                            //         ),
                            //     )).toList(),
                            //     value: selectedValue,
                            //     onChanged: (value) {
                            //       setState(() {
                            //         selectedValue = value;
                            //       });
                                  
                            //       print(value);
                            //     },
                            //     buttonStyleData: ButtonStyleData(
                            //       padding: EdgeInsets.symmetric(horizontal: 16),
                            //       height: 40,
                            //       width: 140,
                            //       decoration: BoxDecoration(
                            //         borderRadius: BorderRadius.circular(10),
                            //         // border: Border.all(
                            //         //   color: Color.fromRGBO(179, 179, 179, 1),
                            //         //   width: 2.46
                            //         // ),
                            //         color: Color(0xFFFFFFFF),
                            //         boxShadow: [
                            //           BoxShadow(
                            //             color: Color.fromRGBO(0, 0, 0, 0.25),
                            //             offset: Offset(0, 0),
                            //             blurRadius: 5,
                            //             spreadRadius: 0,
                            //           )
                            //         ],
                            //       ),
                            //     ),
                            //     dropdownStyleData: const DropdownStyleData(
                            //       maxHeight: 120,
                            //     ),
                            //     menuItemStyleData: const MenuItemStyleData(
                            //       height: 40,
                            //     ),
                            //   ),
                            // )
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
                          _PayButton(selectedVal: selectedMethod)
                        ],
                    ),
                  )
                    
                )
                  
              ],
            )
          )
        )
      );
        }
      )
      
    );
  }
}

class _PayButton extends StatelessWidget {
  String? selectedVal;

  _PayButton({
    super.key,
    this.selectedVal
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
            context.read<LoanBloc>().add(FormSubmitted()) ,
            navigator.pushNamed(
              '/paymentdetail',
              arguments:  {
                'method': selectedVal,
                'v2': 'data2',
                'v3': 'data3',
              },
            )
          },
        );
        
      },
    );
  }
}
