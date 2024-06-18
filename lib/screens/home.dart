// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fintech_app/widget/bottom_navbar.dart';
import 'package:fintech_app/widget/custom_button.dart';
import 'package:fintech_app/widget/rounded_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fintech_app/bloc/authentication/authentication_bloc.dart';
import 'package:fintech_app/bloc/login/login_bloc.dart';
import 'package:fintech_app/layout/default.dart';
import 'package:fintech_app/constants.dart';
import 'package:fintech_app/repositories/user.dart';
import 'package:fintech_app/services/auth_service.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => DefaultScaffold(
        bodyWidget: const HomeScreen(),
        isShowLeading: true,
        showAppBar: false,
        isBodyScroll: true,
      )
    );
  }

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // late final AuthService _authenticationRepository;
  // late final UserRepository _userRepository;

  @override
  void initState() {
    super.initState();
    // _authenticationRepository = AuthService();
    // _userRepository = UserRepository();
  }

  @override
  void dispose() {
    //_authenticationRepository.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return BlocProvider(
    //    create: (context) {
    //         return LogInBloc(
    //           authRepo:
    //               RepositoryProvider.of<AuthService>(context),
    //         );
    //       },
    //   child: BlocListener<AuthenticationBloc, AuthenticationState>(
    //     listener: (context, state) {
    //       switch (state.status) {
    //         case AuthenticationStatus.authenticated:
    //           navigatorKey.currentState?.pushNamed('/');
    //         case AuthenticationStatus.unauthenticated:
    //           navigatorKey.currentState?.pushNamed('/login');
    //         case AuthenticationStatus.unknown:
    //           break;
    //       }
    //     },
    //     child: HomeView(),
    //   )
    // );
    return HomeView(isReloan: true);
  }
}

class HomeView extends StatelessWidget {
  bool isReloan;

  HomeView({
    super.key,
    required this.isReloan, 
  });

  void goToRoute(route){
    if(route == 'detail') navigator.pushNamed('/loandetail');
    if(route == 'reqpayment') navigator.pushNamed('/requestpayment');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
          
            SingleChildScrollView(
              child:  Container(
                //height: MediaQuery.of(context).size.height - 66,
                padding: EdgeInsets.only(bottom: 100.0),
                   child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _Header(),
                        SizedBox(height: 20.0),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Wrap(           
                            spacing: 20, 
                            children: [
                              Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Active Loans',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 25,
                                        height: 1.5,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF000000),
                                      ),
                                      textAlign:TextAlign.left
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  RoundedContainer(
                                    isSmall: true,
                                    status: 'Active', 
                                    text: '\$ 10,000', 
                                    isWarning: false, 
                                    isMyLoan: false, 
                                    loanDetail: false, 
                                    isBlack: true, 
                                    withBg: true, 
                                    btnTxt: 'Details', 
                                    // btnHeight: 17, 
                                    // btnWidth: 60, 
                                    onPressed: () => goToRoute('detail'),
                                  ),
                                ],
                              ),
                              
                              isReloan 
                              ? SizedBox(
                                // decoration:BoxDecoration(
                                //   border: Border.all(color: Color(0xFF0082FF)), 
                                // ),
                                child: Column(
                                  children: [
                                    SizedBox(height: 20.0),
                                    Text(
                                      'Reloan ?',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF000000),
                                        fontSize: 15,
                                        height: 1.5,
                                        fontWeight: FontWeight.w700
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                                      crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                                      children: [
                                        CustomButton(isSmall: false, isFilled: true, btnText: 'Yes', height: 25, width: 128.03, isBlack: false, onPressed:() => navigator.pushNamed('/reloan'),),
                                        SizedBox(width: 11.36),
                                        CustomButton(isSmall: false, isFilled: false, btnText: 'No', height: 25, width: 128.03, isBlack: false,)
                                      ],
                                    ),
                                    SizedBox(height: 20.0),
                                  ],
                                )
                              )
                              : SizedBox(height: 20.0),
                              Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Due Payment',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 25,
                                        height: 1.5,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF000000),
                                      ),
                                      textAlign:TextAlign.left
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  RoundedContainer(
                                    isSmall: true,
                                    status: 'Over Due', 
                                    text: '\$ 10,000', 
                                    btnTxt: 'Pay', 
                                    isBlack: false, 
                                    isWhite: true, 
                                    isStatusTop: false, 
                                    isWarning: true, 
                                    isMyLoan: false, 
                                    btnHeight: 36, 
                                    btnWidth: 90,
                                    onPressed: () => goToRoute('reqpayment'),
                                  ),
                                  SizedBox(height:20)
                                ],
                              
                              ),

                              Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'My Loans',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 25,
                                        height: 1.5,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF000000),
                                      ),
                                      textAlign:TextAlign.left
                                    ),
                                  ),
                                
                                  ListView.builder(
                                    itemCount: 4,
                                    shrinkWrap: true,
                                    itemBuilder: (BuildContext context, int index) {
                                      return Column(
                                        children: [
                                          SizedBox(
                                            height: 15,
                                          ),
                                          RoundedContainer(
                                            number: index + 1,
                                            status: 'Pending', 
                                            text: '\$ 10,000', 
                                            btnTxt: 'Details', 
                                            isBlack: false, 
                                            isPending: true, 
                                            isMyLoan: true, 
                                            withBg: true,
                                            btnWidth: 35, 
                                          ),
                                          
                                        ],
                                      );
                                      
                                    }
                                  ),
                                ],
                              )
                              
                            ],
                          ),
                        )
                      
                      ],
                    ),
                )
    
            ),
             Positioned(
              bottom: 0,
              child: Container(
                height: 66,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(bottom:13),
                child:  CustomBottomNavbar()
              )
            ),
            // Positioned(
            //   top: 0,
            //   left: 0,
            //   child: Container(
            //     //width: 100,
            //     height: 75,
            //     padding: EdgeInsets.fromLTRB(20, 25, 20, 0),
    
            //     decoration: const BoxDecoration(
            //       color: Colors.transparent,
            //       //color: Colors.transparent
            //     ),
            //     child: Column(
            //       children: [
            //         Row(
            //           children: <Widget>[
            //             GestureDetector(
            //               child: SvgPicture.asset(
            //                 'assets/images/hamburger-menu.svg',
            //                 height: 21, width: 15, fit: BoxFit.scaleDown
            //               )
            //             )
            //           ],
            //         )
            //       ],
            //     )
            //   )
            // ),
          ]
        )
      )
    );
  
  }
}

class _Header extends StatelessWidget {
  const _Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //height: 284.0,
      padding: EdgeInsets.fromLTRB(20, 25, 20, 35),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 130, 255, 0.5),
            offset: Offset(0, 6),
            blurRadius: 25,
            spreadRadius: 0,
          )
        ],
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
        color: Color.fromRGBO(0, 121, 238, 0.9),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/bg-light.png"),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: <Widget>[
              GestureDetector(
                child: SvgPicture.asset(
                  'assets/images/hamburger-menu.svg',
                  height: 21, width: 15, fit: BoxFit.scaleDown
                )
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'Get Loans Easily!',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 35,
                height: 1.7,
                fontWeight: FontWeight.w700,
                color: Color(0xFFFFFFFF)),
          ),
          SizedBox(
            height: 25,
          ),
          //Loan Amount Widget
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                //width: 169,
                height: 98,
                padding: EdgeInsets.fromLTRB(22,15,22,13),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                      spreadRadius: 0,
                    )
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFFFFFFF),
                ),
                 child: Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Subtotal",
                            style: const TextStyle( 
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              height: 2.3,
                              color: Color(0xFF646464)
                            ),
                          ),
                           TextSpan(
                            text: "\$ 5,600",
                            style: const TextStyle( 
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              height: 2.3,
                              color: Color(0xFF646464)
                            ),
                          ),
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   height: .0,
                    // ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "\$",
                            style: const TextStyle( 
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              height: 1.5,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF000000)
                            ),
                          ),
                          TextSpan(
                            text: "265,000",
                            style: const TextStyle( 
                              fontFamily: 'Poppins',
                              fontSize: 28,
                              height: 1.5,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF000000)
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                   
                  ],
                )
              ),
              //SizedBox(width: 32.7),
              Container(
                //width: 169,
                height: 98,
                padding: EdgeInsets.fromLTRB(22,15,22,13),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                      spreadRadius: 0,
                    )
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFFFFFFF),
                ),
                 child: Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: SvgPicture.asset(
                              "assets/images/coin.svg"
                            )
                    
                          ),
                          TextSpan(
                            text: " All Loan Amounts",
                            style: const TextStyle( 
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              height: 2.3,
                              color: Color(0xFF646464)
                            ),
                          ),
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   height: .0,
                    // ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "\$",
                            style: const TextStyle( 
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              height: 1.5,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF000000)
                            ),
                          ),
                          TextSpan(
                            text: "265,000",
                            style: const TextStyle( 
                              fontFamily: 'Poppins',
                              fontSize: 28,
                              height: 1.5,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF000000)
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                   
                  ],
                )
              )
            ],
          )
        ],
      ),
    );
  }
}

// class _Section extends StatelessWidget {
//   final Function()? onPressed;
//   final String text, status, btnTxt, title;
//   final String? bgColor;
//   final double? btnHeight, btnWidth;
//   final bool wButton, isWhite, isBlack, isWarning, isStatusTop, btnOnly, isMyLoan,withBg;

//   const _Section({
//     super.key,
//     required this.title, 
//     required this.status, 
//     required this.text, 
//     required this.btnTxt, 
//     this.onPressed,
//     this.btnHeight, 
//     this.btnWidth, 
//     this.bgColor,
//     this.isWarning = false, 
//     this.wButton= false,
//     this.isWhite= false,
//     this.isBlack=true,
//     this.isStatusTop=true,
//     this.btnOnly= false,
//     this.isMyLoan= false,
//     this.withBg= false,
//   });

//   @override
//   Widget build(BuildContext context) {
//     if( title != '') {
//       return Column(
//         children: [
//           Align(
//             alignment: Alignment.centerLeft,
//             child: Text(
//               title,
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 25,
//                 height: 1.5,
//                 fontWeight: FontWeight.w700,
//                 color: Color(0xFF000000),
//               ),
//               textAlign:TextAlign.left
//             ),
//           ),
//           SizedBox(
//             height: 10.0,
//           ),
//           RoundedContainer(
//             status: status, 
//             text: text, 
//             btnTxt: btnTxt, 
//             isBlack: isBlack, 
//             isWhite:isWhite, 
//             isStatusTop: isStatusTop,
//             isWarning: isWarning,
//             withBg: withBg,
//             onPressed: onPressed,
//           )
//         ],
//       );
//     } else {
//       return Column(
//       children: [
//         SizedBox(
//           height: 15.0,
//         ),
//         RoundedContainer(
//           status: status, 
//           text: text, 
//           btnTxt: btnTxt, 
//           isBlack: isBlack, 
//           isWhite:isWhite, 
//           isStatusTop: isStatusTop,
//           isWarning: isWarning,
//           isMyLoan: isMyLoan,
//           withBg: withBg,
//           onPressed: onPressed,
//         )
//       ],
//     );
//     }
    
//   }
// }