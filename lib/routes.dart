import 'package:flutter/material.dart';
import 'package:fintech_app/screens/emailsent_screen.dart';
import 'package:fintech_app/screens/home.dart';
import 'package:fintech_app/screens/login_screen.dart';
import 'package:fintech_app/screens/signup_screen.dart';

import './layout/default.dart';


var routes = <String, WidgetBuilder>{
   '/home': (context) => DefaultScaffold(
      bodyWidget: const HomeScreen(),
    ),
  '/login': (context) => DefaultScaffold(
    bodyWidget: const LoginScreen(),
    showAppBar: false,
    isBodyScroll: false,
    // hasBg: true,
  ),
  '/signup': (context) => DefaultScaffold(
    bodyWidget: const SignupScreen(),
    showAppBar: false,
    isBodyScroll: false,
  ),
  '/ver_email': (BuildContext context) => DefaultScaffold(
    bodyWidget: const EmailverificationScreen(),
    toRoute: 'email',
  ),
};