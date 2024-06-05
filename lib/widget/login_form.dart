import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:fintech_app/bloc/authentication/authentication_bloc.dart';
import 'package:fintech_app/bloc/login/login_bloc.dart';
// import 'package:fintech_app/bloc/signup/signup_cubit.dart';
// import 'package:fintech_app/bloc/signup/signup_state.dart';
import 'package:fintech_app/constants.dart';
import 'package:fintech_app/services/auth_service.dart';

class LogInForm extends StatefulWidget {
LogInForm({
  super.key,
});

@override
State<LogInForm> createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

@override
void initState() {
  super.initState();
  // Start listening to changes.
  //emailController.addListener(_printLatestValue);
}

@override
void dispose() {
  // Clean up the controller when the widget is disposed.
  emailController.dispose();
  passwordController.dispose();
  super.dispose();
}

// void _printLatestValue() {
//   final text = emailController.text;
//   print(text);
// }
  
@override
Widget build(BuildContext context) {
  return BlocListener<LogInBloc, LogInState>(
    listener: (context, state) {
      if (state.status.isSuccess) {
        navigator.pushNamed('/');
      } else if (state.status.isFailure) {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(content: Text(state.errorMessage ?? 'Sign In Failed')),
          );
      }
      // switch (state.status) {
      //       case AuthenticationStatus.authenticated:
      //        navigatorKey.currentState?.pushNamed('/');
      //       case AuthenticationStatus.unauthenticated:
      //         navigatorKey.currentState?.pushNamed('/login');
      //       case AuthenticationStatus.unknown:
      //         break;
      //     }
    },
    child: Container (
      height: MediaQuery.of(context).size.height - kToolbarHeight,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
          image: Svg("assets/images/background.svg"),
        ),
        
      ),
      padding: const EdgeInsets.all(30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Welcome!', 
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 25, 
              fontWeight: FontWeight.w700
            ),// default text style
          ),
          const Text(
            'Login to continue using the app!', 
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 13, 
              fontWeight: FontWeight.w500
            ),// default text style
          ),
          Container(
            margin: const EdgeInsets.only(top: 40.0, bottom: 113.0),
              height: 203,
              width: 272,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: Svg('assets/images/person_clicking.svg',),
                  fit: BoxFit.fitHeight,
                ),
              )
            ),
          _EmailInputField(controller: emailController, hinttext: 'Email Address',),
          const Padding(padding: EdgeInsets.all(12)),
          _PasswordInputField(controller: passwordController, hinttext: 'Password'),
          Container(
            alignment: Alignment.centerRight,
            child:  TextButton(
              onPressed: () {},
              child: const Text(
                "Forgot Password?",
                style: TextStyle(color: Color(0xFF216EFB)),
              ),
            ),
          ),
          const SizedBox(height: 20),
          _LogInButton(),
          const SizedBox(height: 20),
          RichText(
            text: TextSpan(
              text: 'Don’t have an account? ',
              style: const TextStyle( fontSize: 15,color: Colors.black),
              
              children: <TextSpan>[
                TextSpan(
                  text: 'Register here',
                  style: const TextStyle( fontSize: 15,color: Color(0xFF0082FF), decoration: TextDecoration.underline),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.of(context).pushNamed('/register');
                  }
                ),
              ]
            )
          ),
        ],
      )
    )
  );
}
}

class _EmailInputField extends StatelessWidget {
final controller;
final String hinttext;

const _EmailInputField({super.key, this.controller, required this.hinttext});

@override
Widget build(BuildContext context) {
  return BlocBuilder<LogInBloc, LogInState>(
    buildWhen: (previous, current) => previous.email != current.email,
    builder: (context, state) {
      return TextField(
        style: const TextStyle(
          fontSize: 15, 
          height: 1.3,
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: const BorderSide(
              width: 1.0, 
              color: Color(0x00ADADAD),
              style: BorderStyle.solid,
            ),
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.all(10),
          hintText: hinttext,
          hintStyle: TextStyle(fontSize: 15,color: Color(0xFFADADAD)),
        ),
        controller: controller, 
        key: const Key('logInForm_emailInput_textField'),
        onChanged: (email) => context.read<LogInBloc>().add(EmailChanged(email: email)),
      );
    } 
  );
  
}
}

class _PasswordInputField extends StatelessWidget {
final controller;
final String hinttext;

const _PasswordInputField({super.key, this.controller, required this.hinttext});

@override
Widget build(BuildContext context) {
  return BlocBuilder<LogInBloc, LogInState>(
    buildWhen: (previous, current) => previous.email != current.email,
    builder: (context, state) {
      return TextField(
          style: const TextStyle(
          fontSize: 15, 
          height: 1.3,
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: const BorderSide(
              width: 0, 
              color: Color(0xFFADADAD)
            ),
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.all(10),
          hintText: hinttext,
          hintStyle: TextStyle(fontSize: 15,color: Color(0xFFADADAD)),
        ),
        controller: controller, 
        key: const Key('logInForm_passwordInput_textField'),
        onChanged: (password) => context.read<LogInBloc>().add(PasswordChanged(password:password)),
      );
    } 
  );
  
}
}

class _LogInButton extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return BlocBuilder<LogInBloc, LogInState>(
    builder: (context, state) {
      return state.status.isInProgress
          ? const CircularProgressIndicator()
          : SizedBox(
    height: 49.0,
    width: 303.0,
    child: ElevatedButton(
      onPressed: (){
        // context.read<LogInBloc>().add(FormSubmitted());
        navigator.pushNamed('/');
      },
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        backgroundColor: MaterialStateProperty.all<Color>(primaryButtonColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          )
        )
      ),
      child: const Text(
        'Login',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontFamily: 'Poppins',
          fontSize: 15,
          height: 1.5
        )
      ),
    )
  );
    },
  );
}
}

class _TAndC extends StatefulWidget{
@override
State<_TAndC> createState() => _TAndCState();
}

class _TAndCState extends State<_TAndC> {
bool? isChecked = false;

@override
Widget build(BuildContext context){
  return Row(
    children: [
      Checkbox(
        isError: true,
        tristate: true,
        value: isChecked,
        onChanged: null,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2.0),
        ),
        side: MaterialStateBorderSide.resolveWith(
            (states) => BorderSide(width: 1.0, color: Color(0xFFB3B3B3)),
        ),
      ),
      const Text(
        'I accept the Terms of Service & Data Privacy Policy',
        style: TextStyle(
          color: Color(0xFFB5B5B5),
          fontSize: 13,
          height: 1.23
        ),
      )
    ],
  );
}
}