import 'package:fintech_app/screens/loan_details_screen.dart';
import 'package:fintech_app/screens/my_loans_screen.dart';
import 'package:fintech_app/screens/payment_detail_screen.dart';
import 'package:fintech_app/screens/request_payment.dart';
import 'package:fintech_app/screens/verify_otp.dart';
import 'package:fintech_app/screens/id_verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:fintech_app/screens/payment_status_screen.dart';
import 'package:fintech_app/screens/home.dart';
import 'package:fintech_app/screens/login_screen.dart';
import 'package:fintech_app/screens/signup_screen.dart';

import './layout/default.dart';


var routes = <String, WidgetBuilder>{
   '/': (context) => HomeScreen(),
  '/login': (context) => DefaultScaffold(
    bodyWidget: const LoginScreen(),
    showAppBar: false,
    isBodyScroll: true,
    withNavbar: false,
    isFullWidth: true,
    // hasBg: true,
  ),
  '/register': (context) => DefaultScaffold(
    bodyWidget: const SignupScreen(),
    showAppBar: false,
    isBodyScroll: true,
    withNavbar: false,
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
  '/paymentstatus': (context) => DefaultScaffold(
    bodyWidget: const PaymenyStatusScreen(),
    showAppBar: true,
    isBodyScroll: false,
    isShowLeading: false,
    withNavbar: false,
  ),
  '/otp': (context) => DefaultScaffold(
    bodyWidget: VerifyOtpScreen(),
    showAppBar: false,
    isBodyScroll: true,
    withNavbar: false,
  ),
  '/idverification': (context) => DefaultScaffold(
    bodyWidget: VerifyIdScreen(),
    showAppBar: true,
    isShowLeading: false,
    isBodyScroll: true,
    withNavbar: false,
    isFullWidth: true,
  ),
  '/loandetail': (context) => DefaultScaffold(
    bodyWidget: const LoanDetailScreen(),
    isShowLeading: false,
    showAppBar: true,
    isBodyScroll: false,
    withNavbar: false,
  ),
  '/paymentdetail': (context) => PaymentDetailScreen()
};