import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fintech_app/bloc/signup/signup_bloc.dart';
import 'package:fintech_app/bloc/signup/signup_cubit.dart';
import 'package:fintech_app/services/auth_service.dart';
import 'package:fintech_app/widget/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const SignupScreen());
  }

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
          create: (context) {
            return SignupBloc(
              authRepo:
                  RepositoryProvider.of<AuthService>(context),
            );
          },
      child: SignupForm(),
    );
  }
}
