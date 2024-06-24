import 'package:fintech_app/constants.dart';
import 'package:fintech_app/size_config.dart';
import 'package:fintech_app/widget/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgotPasswordScreen extends StatefulWidget {

  ForgotPasswordScreen({
    super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  int step=0;
  String email = '';
  String _imgSrc = '';

  //  @override
  // void initState() {
  //   step = 0;
  //   super.initState();
  // }

  void nextStep(){
    setState(() {
      step++;
    });
    print(step);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height - 30 ,
      // decoration: BoxDecoration(
      //   border: Border.all(
      //     color: Colors.black
      //   ),
      //   color: Colors.amber
      // ),
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 25
      ),
      child: IndexedStack(
        index: step,
        children: [
          //Submit Email Widget
          _submitEmailForm(onPressed: nextStep),
          //Check your email wiidget
          Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: 
                      SvgPicture.asset("assets/images/chevron_left_black.svg")
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    const Text(
                      'Check your Email',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                        height: 1.5,
                        color: Color(0xFF000000)
                      ),
                    ),
                    const Text(
                      'We have sent a reset password \nto your email address',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        height: 1.5,
                        color: Color(0xFF878787)
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    SvgPicture.asset('assets/images/email_sent_paper_plane.svg'),
                  ]
                )
              ),
               CustomButton(
                isSmall: false, 
                btnText: 'Send',
                height: 49, 
                width: double.infinity, 
                isFilled: true, 
                isBlack: false, 
                onPressed: () => {
                  setState(() {
                    step++;
                  }),
                  print(step)
                },
              )
            ],
          ),
          //Reset Your Password
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 44,
                  width: 141,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/supreme_logo_small.png'))
                  ),
                )
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                'Reset your password',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  height: 1.5,
                  color: Color(0xFF000000)
                ),
              ),
              Text(
                'You request to us for resetting your password. if you really did, click here to create a new one :',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  height: 1.5,
                  letterSpacing: -0.01,
                  color: Color(0xFF000000)
                ),
              ),
              SizedBox(
                height: 24,
              ),
              SizedBox(
                width: double.infinity,
                child: _createNewPasswordButton(onPressed: nextStep),
              ),
              // CustomButton(
              //   isSmall: false, 
              //   btnText: 'CREATE A NEW PASSWORD',
              //   height: 49, 
              //   width: double.infinity, 
              //   isFilled: true, 
              //   isBlack: false, 
              //   onPressed: () => {
              //     setState(() {
              //       step++;
              //     }),
              //     print(step)
              //   },
              // ),
               SizedBox(
                height: 40,
              ),
              Text(
                'Just ignore this email if you didn’t mean to reset your password.',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  height: 1.5,
                  letterSpacing: -0.01,
                  color: Color(0xFF000000)
                ),
              ),
               SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  text: 'If you have any questions, we’re happy to help. Please tell our admin at',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    height: 1.5,
                    letterSpacing: -0.01,
                    color: Color(0xFF000000)
                  ),
                  children: [
                    TextSpan(
                      text: 'supreme@gmail.com',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        height: 1.5,
                        letterSpacing: -0.01,
                        color: Color(0xFF0082FF),
                        decoration: TextDecoration.underline
                      ),
                    )
                  ]
                ),

              )
            ],
            
          ),
          //Create New Password
           _submitNewPasswordForm(onPressed: nextStep),
          //Successul
          _passwordChangedWidget()
        ],
      ),
         
        
      
    );
    
  }
}

class _emailInputField extends StatelessWidget {
  final controller;
  final String hinttext;

  const _emailInputField({super.key, this.controller, required this.hinttext});

  @override
  Widget build(BuildContext context) {
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
        contentPadding: const EdgeInsets.all(10),
        filled: true,
        fillColor: Colors.white,
        hintText: hinttext,
        hintStyle: const TextStyle(fontSize: 15,color: Color(0xFFADADAD)),
      ),
      controller: controller, 
      key: const Key('resetPasswordForm_emailInputField'),
      //onChanged: (email) => context.read<SignupBloc>().add(EmailChanged(email: email)),
    );
  
  }
}

class _newPasswordInputField extends StatelessWidget {
  final controller;
  final String hinttext;

  const _newPasswordInputField({super.key, this.controller, required this.hinttext});

  @override
  Widget build(BuildContext context) {
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
        contentPadding: const EdgeInsets.all(10),
        filled: true,
        fillColor: Colors.white,
        hintText: hinttext,
        hintStyle: const TextStyle(fontSize: 15,color: Color(0xFFADADAD)),
      ),
      controller: controller, 
      key: const Key('resetPasswordForm_newPasswordInputField'),
      //onChanged: (email) => context.read<SignupBloc>().add(EmailChanged(email: email)),
    );
  
  }
}

class _createNewPasswordButton extends StatelessWidget{
  final VoidCallback? onPressed;

  const _createNewPasswordButton({
    super.key,
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed!(), 
      style: ButtonStyle(
        //foregroundColor: isFilled ? MaterialStateProperty.all<Color>(Color(0xFFFFFFFF)) : MaterialStateProperty.all<Color>(Color(0xFF0082FF)),
        backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF0082FF)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          )
        ),
        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(top: 10,bottom: 10))
      ),
      child: Text(
        'CREATE A NEW PASSWORD',
        style: TextStyle(
          fontFamily: 'Poppins',
          color: const Color(0xFFFFFFFF),
          fontWeight: FontWeight.w700,
          fontSize: 16,
          height: 1.5
        ),
      ),
    );
  
  }
}

class _submitEmailForm extends StatelessWidget {
  final VoidCallback? onPressed;

  _submitEmailForm({
    this.onPressed,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: 
                SvgPicture.asset("assets/images/chevron_left_black.svg")
              ),
              const SizedBox(
                height: 100,
              ),
              const Text(
                'Forgot Password',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  height: 1.5,
                  color: Color(0xFF000000)
                ),
              ),
              const Text(
                'Please enter your email address \nto request a password reset',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  height: 1.5,
                  color: Color(0xFF878787)
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Email',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  height: 1.5,
                  color: Color(0xFF000000)
                ),
              ),
              const _emailInputField(hinttext: 'abcd@gmail.com'),
              // const SizedBox(
              //   height: 375,
              // ),
            ],
          )
        ),
        
        CustomButton(
          isSmall: false, 
          btnText: 'Send',
          height: 49, 
          width: double.infinity, 
          isFilled: true, 
          isBlack: false, 
          onPressed: () => onPressed!(),
        )
      ],
    );
  }
}

class _submitNewPasswordForm extends StatelessWidget {
  final VoidCallback? onPressed;

  _submitNewPasswordForm({
    this.onPressed,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ 
              Align(
                alignment: Alignment.topLeft,
                child: 
                SvgPicture.asset("assets/images/chevron_left_black.svg")
              ),
              const SizedBox(
                height: 100,
              ),
              const Text(
                'Create new password',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  height: 1.5,
                  color: Color(0xFF000000)
                ),
              ),
              const Text(
                'Create new password for your account',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  height: 1.5,
                  color: Color(0xFF878787)
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'New Password',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  height: 1.5,
                  color: Color(0xFF000000)
                ),
              ),
              const _newPasswordInputField(hinttext: '••••••••••••'),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Confirm Password',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  height: 1.5,
                  color: Color(0xFF000000)
                ),
              ),
              const _newPasswordInputField(hinttext: '••••••••••••'),
            ],
          )
        ),
        
        CustomButton(
          isSmall: false, 
          btnText: 'Send',
          height: 49, 
          width: double.infinity, 
          isFilled: true, 
          isBlack: false, 
          onPressed: () => onPressed!(),
        )
      ],
    );
    
  }
}

class _passwordChangedWidget extends StatelessWidget {
  const _passwordChangedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: 
                SvgPicture.asset("assets/images/chevron_left_black.svg")
              ),
              const SizedBox(
                height: 100,
              ),
              const Text(
                'Password changed',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  height: 1.5,
                  color: Color(0xFF000000)
                ),
              ),
              const Text(
                'You successfully changed password \nfor your account',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  height: 1.5,
                  color: Color(0xFF878787)
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SvgPicture.asset('assets/images/password_changed.svg'),
            ],
          )
        ),
        CustomButton(
          isSmall: false, 
          btnText: 'Send',
          height: 49, 
          width: double.infinity, 
          isFilled: true, 
          isBlack: false, 
          onPressed: () => navigator.pushNamed('/login'),
        )
      ],
    );
  }
}