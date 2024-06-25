import 'package:fintech_app/widget/custom_textfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:fintech_app/bloc/signup/signup_bloc.dart';
// import 'package:fintech_app/bloc/signup/signup_cubit.dart';
// import 'package:fintech_app/bloc/signup/signup_state.dart';
import 'package:fintech_app/constants.dart';

class SignupForm extends StatefulWidget {
  SignupForm({
    super.key,
  });

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  
   var emailController = TextEditingController();
   var passwordController = TextEditingController();
   var fullNameController = TextEditingController();

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
    fullNameController.dispose();
    super.dispose();
  }

  void _printLatestValue() {
    final text = emailController.text;
    print(text);
  }
    
  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupBloc, SignUpState>(
      listener: (context, state) {
        if (state.status.isSuccess) {
          navigator..pushNamed('/ver_email');
        } else if (state.status.isFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text(state.errorMessage ?? 'Sign Up Fail')),
            );
        }
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
                margin: const EdgeInsets.only(top: 40.0, bottom: 50),
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
              const SizedBox(height: 20),
              _FullNameInputField(controller: fullNameController, hinttext: 'Full Name',),
              const SizedBox(height: 20),
              _PasswordInputField(controller: passwordController, hinttext: 'Password' ),
              const SizedBox(height: 20),
              _PasswordInputField(controller: passwordController, hinttext: 'Confirm Password' ),
               const SizedBox(height: 20),
              Container(
                width: double.infinity,
                child:  RichText(
                  softWrap: true,
                  text: TextSpan(
                    text: 'I agree to ',
                    style: const TextStyle( 
                      fontSize: 15,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Terms & Conditions',
                        style: const TextStyle( fontSize: 15,color: Color(0xFF0082FF), decoration: TextDecoration.underline),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).pushNamed('/signup');
                        }
                      ),
                    ]
                  )
                ),
              ),
              Spacer(),
              // const SizedBox(height: 55),
              _SignUpButton(),
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
    return BlocBuilder<SignupBloc, SignUpState>(
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
            contentPadding: EdgeInsets.all(10),
            filled: true,
            fillColor: Colors.white,
            hintText: hinttext,
            hintStyle: TextStyle(fontSize: 15,color: Color(0xFFADADAD)),
          ),
          controller: controller, 
          key: const Key('signUpForm_emailInput_textField'),
          onChanged: (email) => context.read<SignupBloc>().add(EmailChanged(email: email)),
        );
      } 
    );
    
  }
}

class _FullNameInputField extends StatelessWidget {
  final controller;
  final String hinttext;

  const _FullNameInputField({super.key, this.controller, required this.hinttext});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupBloc, SignUpState>(
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
            contentPadding: EdgeInsets.all(10),
            filled: true,
            fillColor: Colors.white,
            hintText: hinttext,
            hintStyle: TextStyle(fontSize: 15,color: Color(0xFFADADAD)),
          ),
          controller: controller, 
          key: const Key('signUpForm_nameInput_textField'),
          //onChanged: (password) => context.read<SignupBloc>().add(PasswordChanged(password:password)),
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
    return BlocBuilder<SignupBloc, SignUpState>(
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
            contentPadding: EdgeInsets.all(10),
            filled: true,
            fillColor: Colors.white,
            hintText: hinttext,
            hintStyle: TextStyle(fontSize: 15,color: Color(0xFFADADAD)),
          ),
          controller: controller, 
          key: const Key('signUpForm_passwordInput_textField'),
          onChanged: (password) => context.read<SignupBloc>().add(PasswordChanged(password:password)),
        );
      } 
    );
    
  }
}

class _SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupBloc, SignUpState>(
      builder: (context, state) {
        return state.status.isInProgress
            ? const CircularProgressIndicator()
            : SizedBox(
      height: 56.0,
      width: 376.0,
      child: ElevatedButton(
        onPressed: (){
          //context.read<SignupBloc>().add(FormSubmitted());
          navigator.pushNamed('/otp');
        },
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor: MaterialStateProperty.all<Color>(primaryButtonColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            )
          )
        ),
        child: const Text(
          'Sign Up',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontFamily: 'NunitoSans',
            fontSize: 21,
            height: 0.6
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