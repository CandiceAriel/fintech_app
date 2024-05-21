import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fintech_app/bloc/login/login_bloc.dart';
import 'package:fintech_app/layout/default.dart';
import 'package:fintech_app/services/auth_service.dart';
import 'package:fintech_app/widget/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => DefaultScaffold(
        bodyWidget: const LoginScreen(),
        showAppBar: false,
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) {
        return LogInBloc(
          authRepo:
          RepositoryProvider.of<AuthService>(context),
        );
      },
      child: LogInForm(),
    );
  }
}
