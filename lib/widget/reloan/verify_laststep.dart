import 'package:fintech_app/bloc/loan/loan_bloc.dart';
import 'package:fintech_app/widget/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerifyLastStepView extends StatefulWidget {
const VerifyLastStepView({super.key});

@override
State<VerifyLastStepView> createState() => _VerifyLastStepViewState();
}

class _VerifyLastStepViewState extends State<VerifyLastStepView> {
  var employerNameController = TextEditingController();
  var tinSsGsisController = TextEditingController();
  var civilStatusController = TextEditingController();
  var otherAssetsController = TextEditingController();
  var ownedACarController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Start listening to changes.
    //emailController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    employerNameController.dispose();
    tinSsGsisController.dispose();
    civilStatusController.dispose();
    otherAssetsController.dispose();
    ownedACarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
    // direction: Axis.horizontal,
    // alignment: WrapAlignment.center,
    children: [
      SizedBox(
        height: 5,
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFFE2E2E2)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child:   Container(
                      //width: 46,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Color(0xFF0082FF)
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child:   Container(
                      //width: 46,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Color(0xFF0082FF)
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child:   Container(
                      //width: 46,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Color(0xFF0082FF)
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child:   Container(
                      //width: 46,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Color(0xFF0082FF)
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      //width: 46,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Color(0xFF0082FF)
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child:   Container(
                      //width: 46,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Color(0xFF0082FF)
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child:   Container(
                      //width: 46,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Color(0xFF0082FF)
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: 46,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Color(0xFF0082FF)
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ),
        const SizedBox(
          height: 50,
        ),
        Text(
          'One more step!',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 25,
            height: 1.5,
            fontWeight: FontWeight.w700
          ), // default text style
          textAlign: TextAlign.center,
        ),
        const Text(
          'Tell us more about you',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 12,
            height: 1.5,
            fontWeight: FontWeight.w500,
            color: Color(0xFF878787)
          ), // default text style
        ),
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Employer’s Name',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  height: 1.5
                ),
              ),
              _ReceipientInputField(
                controller: employerNameController,
                hinttext: 'Lorem Ipsum',
                 inputKey: 'employerNameInput_textField', 
                 previous: 'previous.receipient.employer',
                 current: 'previous.receipient.employer',
              ),
              SizedBox(
                height: 20
              ),
              Text(
                'Tin Ss Gsis',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  height: 1.5
                ),
              ),
              _ReceipientInputField(
                controller: tinSsGsisController,
                hinttext: 'Lorem Ipsum',
                 inputKey: 'tinInput_textField', 
                 previous: 'previous.receipient.tin',
                 current: 'previous.receipient.tin',
              ),
              SizedBox(
                height: 20
              ),
              Text(
                'Civil Status',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  height: 1.5
                ),
              ),
              _ReceipientInputField(
                controller: civilStatusController,
                hinttext: 'Lorem Ipsum',
                 inputKey: 'civilStatusInput_textField', 
                 previous: 'previous.receipient.civilStatus',
                 current: 'previous.receipient.civilStatus',
              ),
              SizedBox(
                height: 20
              ),
              Text(
                'Other Assets',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  height: 1.5
                ),
              ),
             _ReceipientInputField(
                controller: otherAssetsController,
                hinttext: 'Lorem Ipsum',
                 inputKey: 'receipientBankInput_textField', 
                 previous: 'previous.receipient.bank',
                 current: 'previous.receipient.bank',
              ),
              _ReceipientInputField(
                controller: otherAssetsController,
                hinttext: 'Lorem Ipsum',
                 inputKey: 'receipientBankInput_textField', 
                 previous: 'previous.receipient.bank',
                 current: 'previous.receipient.bank',
              ),
              SizedBox(
                height: 20
              ),
              Text(
                'Owned A Car?',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  height: 1.5
                ),
              ),
              _ReceipientInputField(
                controller: ownedACarController,
                hinttext: 'Lorem Ipsum',
                 inputKey: 'carInput_textField', 
                 previous: 'previous.receipient.car',
                 current: 'previous.receipient.car',
              ),
            ],
          ),
        )
        
      ]
    );
  }
}


class _ReceipientInputField extends StatelessWidget {
  final controller;
  final String hinttext, inputKey, previous, current;

  const _ReceipientInputField({super.key, this.controller, required this.hinttext, required this.inputKey, required this.previous, required this.current});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoanBloc, LoanState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        return TextField(
          style: const TextStyle(
            fontSize: 15, 
            height: 1.3,
          ),
          decoration: InputDecoration(
            // border: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(6.0),
            //   borderSide: const BorderSide(
            //     width: 0, 
            //     style: BorderStyle.none,
            //   ),
            // ),
            hintText: hinttext,
          ),
          controller: controller, 
          key: Key(inputKey),
          //onChanged: (email) => context.read<LoanBloc>().add(EmailChanged(email: email)),
        );
      } 
    );
    
  }
}