import 'package:fintech_app/screens/my_loans.dart';
import 'package:fintech_app/screens/request_payment.dart';
import 'package:flutter/material.dart';
import 'package:fintech_app/screens/payment_status_screen.dart';
import 'package:fintech_app/screens/home.dart';
import 'package:fintech_app/screens/login_screen.dart';
import 'package:fintech_app/screens/signup_screen.dart';

import './layout/default.dart';


var routes = <String, WidgetBuilder>{
   '/': (context) => DefaultScaffold(
      bodyWidget: const HomeScreen(),
      showAppBar: false,
      isBodyScroll: true,
    ),
  '/login': (context) => DefaultScaffold(
    bodyWidget: const LoginScreen(),
    showAppBar: false,
    isBodyScroll: false,
    withNavbar: false,
    // hasBg: true,
  ),
  '/register': (context) => DefaultScaffold(
    bodyWidget: const SignupScreen(),
    showAppBar: false,
    isBodyScroll: false,
  ),
  '/paymentver': (context) => DefaultScaffold(
    bodyWidget: const PaymenyVerificationScreen(),
    showAppBar: true,
    isBodyScroll: false,
  ),
  '/myloans': (context) => DefaultScaffold(
    bodyWidget: const MyLoansScreen(),
    showAppBar: true,
    isBodyScroll: true,
    isShowLeading: false,
  ),
  '/requestpayment': (context) => DefaultScaffold(
    bodyWidget: RequestPaymentScreen(),
    showAppBar: false,
    isBodyScroll: false,
    isShowLeading: false,
    withNavbar: false,
  ),
};