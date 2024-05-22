// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fintech_app/widget/rounded_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
            ));
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
    return HomeView();
  }
}

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                _Header(),
                _Content()
              ],
            ),
          ],
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
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
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
        color: Color.fromRGBO(0, 130, 255, 0.5),
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
            height: 35,
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
            height: 35,
          ),
          Row(
            children: <Widget>[
              Container(
                width: 169,
                //height: 98,
                padding: EdgeInsets.fromLTRB(18,15,19,13),
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
                    SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      "265,000",
                      style: const TextStyle( 
                        fontFamily: 'Poppins',
                        fontSize: 28,
                        height: 1.5,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF000000)
                      ),
                    ),
                  ],
                )
              ),
              SizedBox(width: 33.0),
              Container(
                width: 169,
                //height: 98,
                padding: EdgeInsets.fromLTRB(18,15,19,13),
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
                    SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      "265,000",
                      style: const TextStyle( 
                        fontFamily: 'Poppins',
                        fontSize: 28,
                        height: 1.5,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF000000)
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

class _Content extends StatelessWidget {
  const _Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
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
          RoundedContainer(caption: 'Active', text: '10,000', imgSrc: 'assets/images/active_sign.svg', btnTxt: 'Details', isBlack: true,)
        ],
        
      )
    );
    
  }
}