import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fintech_app/constants.dart';
import 'package:fintech_app/layout/default.dart';
import 'package:fintech_app/models/drop_list.dart';
import 'package:fintech_app/widget/custom_button.dart';
import 'package:fintech_app/widget/custom_dropdown.dart';
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
  final List<String> paymentMethod = [
    'ABC Virtual Account',
    'DEF Virtual Account',
    'ABC Bank',
    'Transfer',
  ];
  String? selectedValue;

  void goToDetail() {
    navigator.pushNamed('/paymentdetail');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: Svg("assets/images/background.svg"),
          ),
        ),
        child: Padding(
            // alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
            child: Container(
                constraints: const BoxConstraints(
                  maxHeight: 541
                  ),
                height: 541,
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
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        child:   Column(
                          children: [
                            const SizedBox(
                              height: 50,
                            ),
                            const Text(
                              "Amount",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  height: 1.5,
                                  color: Color(0xFF000000),
                                  fontWeight: FontWeight.w500),
                            ),
                            const FittedBox(
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
                                )),
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
                            const SizedBox(
                              height: 70,
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
                            //Spacer(),
                          CustomDropdown(paymentMethod, selectedValue),
                          SizedBox(height: 70),
                            CustomButton(
                              isSmall: false,
                              btnText: 'Pay',
                              height: 43,
                              width: double.maxFinite,
                              isFilled: true,
                              isBlack: false,
                              onPressed: () => goToDetail()
                            )
                          ],
                        ),
                      )
                    
                    )
                  
                  ],
                )
                // Expanded(
                //   child: Column(
                //     children: [
                //       Container(
                //          constraints: const BoxConstraints(
                //           maxHeight: 94
                //         ),
                //         clipBehavior: Clip.hardEdge,
                //         padding: const EdgeInsets.fromLTRB(32, 20, 32, 20),
                //         decoration: const BoxDecoration(
                //           color: Color.fromRGBO(0, 130, 255, 1),
                //           borderRadius: BorderRadius.only(
                //             topLeft: Radius.circular(20),
                //             topRight: Radius.circular(20),
                //           ),
                //         ),
                //         child: const Center(
                //           child: Column(
                //             children: [
                //               Text(
                //                 "Payment",
                //                 style: TextStyle(
                //                   fontFamily: 'Poppins',
                //                   fontSize: 20,
                //                   height: 1.5,
                //                   color: Color(0xFFFFFFFF),
                //                   fontWeight: FontWeight.w700
                //                 ),
                //               ),
                //               Text(
                //                 "Enter your amount to complete your purchase",
                //                 style: TextStyle(
                //                   fontFamily: 'Poppins',
                //                   fontSize: 11,
                //                   height: 1.5,
                //                   color: Color(0xFFFFFFFF),
                //                   fontWeight: FontWeight.w500
                //                 ),
                //               ),
                //             ],
                //           )
                //         )
                //       ),
                //       Container(
                //         constraints: const BoxConstraints(
                //           maxWidth: 541
                //         ),
                //         clipBehavior: Clip.hardEdge,
                //         padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                //         decoration: const BoxDecoration(
                //           color: Color(0xFFFFFFFF),
                //           // borderRadius: const BorderRadius.all(
                //           //   Radius.circular(),
                //           // ),
                //         ),
                //         child: Center(
                //           child: Column(
                //             children: [
                //               const SizedBox(
                //                 height: 50,
                //               ),
                //               const Text(
                //                 "Amount",
                //                 style: TextStyle(
                //                   fontFamily: 'Poppins',
                //                   fontSize: 15,
                //                   height: 1.5,
                //                   color: Color(0xFF000000),
                //                   fontWeight: FontWeight.w500
                //                 ),
                //               ),
                //               const FittedBox(
                //                 fit: BoxFit.contain,
                //                 child:  Row(
                //                   children: [
                //                     Text(
                //                       "\$",
                //                       style: TextStyle(
                //                         fontFamily: 'Poppins',
                //                         fontSize: 16,
                //                         height: 1.5,
                //                         fontWeight: FontWeight.w600,
                //                         color: Color(0xFF000000)
                //                       ),
                //                     ),

                //                     Text(
                //                       "265,000",
                //                       style: TextStyle(
                //                         fontFamily: 'Poppins',
                //                         fontSize: 28,
                //                         height: 1.5,
                //                         fontWeight: FontWeight.w600,
                //                         color: Color(0xFF000000)
                //                       ),
                //                     ),
                //                   ],
                //                 )
                //               ),
                //               const SizedBox(
                //                 height: 40,
                //               ),
                //               const Text(
                //                 "Payment Method",
                //                 style: TextStyle(
                //                   fontFamily: 'Poppins',
                //                   fontSize: 15,
                //                   height: 1.5,
                //                   color: Color(0xFF000000),
                //                   fontWeight: FontWeight.w500
                //                 ),
                //               ),
                //               const SizedBox(
                //                 height: 70,
                //               ),
                //               // SelectDropList(
                //               //   optionItemSelected,
                //               //   dropListModel,
                //               //   (optionItem){
                //               //     optionItemSelected = optionItem;
                //               //     setState(() {

                //               //     });
                //               //   },
                //               // ),
                //               //Spacer(),
                //               SizedBox(
                //                 child: Stack(
                //                   children: [
                //                     SelectDropList(
                //                       optionItemSelected,
                //                       dropListModel,
                //                       (optionItem){
                //                         optionItemSelected = optionItem;
                //                         setState(() {

                //                         });
                //                       },
                //                     ),

                //                   ],
                //                 )
                //               ),
                //              SizedBox(height: 70),
                //              CustomButton(isSmall: false, btnText: 'Pay', height: 43, width: double.maxFinite, isFilled: true, isBlack: false, onPressed:() => goToDetail())
                //             ],
                //           )
                //         )

                //       ),

                //     ],
                //   ),
                // )
                )));
  }
}
