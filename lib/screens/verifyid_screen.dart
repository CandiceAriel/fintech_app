import 'package:fintech_app/layout/default.dart';
import 'package:flutter/material.dart';

class VerifyIdScreen extends StatefulWidget {
  const VerifyIdScreen({super.key});

   static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => DefaultScaffold(
          bodyWidget: const VerifyIdScreen(),
          showAppBar: true,
          isBodyScroll: true,
          withNavbar: false,
      )
    );
  }

  @override
  State<VerifyIdScreen> createState() => _VerifyIdScreenState();
}

class _VerifyIdScreenState extends State<VerifyIdScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}