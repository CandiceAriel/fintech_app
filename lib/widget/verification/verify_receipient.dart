import 'package:fintech_app/bloc/loan/loan_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerifyReceipientView extends StatefulWidget {
const VerifyReceipientView({super.key});

@override
State<VerifyReceipientView> createState() => _VerifyReceipientViewState();
}

class _VerifyReceipientViewState extends State<VerifyReceipientView> {
var detailController = TextEditingController();
var nameController = TextEditingController();
var addressController = TextEditingController();
var bankController = TextEditingController();
var bankAccNumberController = TextEditingController();
var contactController = TextEditingController();
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
detailController.dispose();
nameController.dispose();
addressController.dispose();
bankController.dispose();
bankAccNumberController.dispose();
contactController.dispose();
employerNameController.dispose();
tinSsGsisController.dispose();
civilStatusController.dispose();
otherAssetsController.dispose();
ownedACarController.dispose();
super.dispose();
}

@override
Widget build(BuildContext context) {
return Wrap(
  alignment: WrapAlignment.center,
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
                          color: Colors.transparent
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
          'You almost there!',
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
                'Recipient Detail',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  height: 1.5
                ),
              ),
              _ReceipientInputField(
                controller: detailController,
                hinttext: 'Lorem Ipsum',
                 inputKey: 'receipientDetailInput_textField', 
                 previous: 'previous.receipient.detail',
                 current: 'previous.receipient.detail',
              ),
              SizedBox(
                height: 20
              ),
              Text(
                'Recipient Name',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  height: 1.5
                ),
              ),
              _ReceipientInputField(
                controller: nameController,
                hinttext: 'Lorem Ipsum',
                 inputKey: 'receipientNameInput_textField', 
                 previous: 'previous.receipient.name',
                 current: 'previous.receipient.name',
              ),
              SizedBox(
                height: 20
              ),
              Text(
                'Recipient Address',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  height: 1.5
                ),
              ),
              _ReceipientInputField(
                controller: addressController,
                hinttext: 'Lorem Ipsum',
                 inputKey: 'receipientAddressInput_textField', 
                 previous: 'previous.receipient.address',
                 current: 'previous.receipient.address',
              ),
              SizedBox(
                height: 20
              ),
              Text(
                'Recipient Bank',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  height: 1.5
                ),
              ),
              _ReceipientInputField(
                controller: bankController,
                hinttext: 'Lorem Ipsum',
                 inputKey: 'receipientBankInput_textField', 
                 previous: 'previous.receipient.bank',
                 current: 'previous.receipient.bank',
              ),
              SizedBox(
                height: 20
              ),
              Text(
                'Recipient Contact',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  height: 1.5
                ),
              ),
              _ReceipientInputField(
                controller: contactController,
                hinttext: 'Lorem Ipsum',
                 inputKey: 'receipientContactInput_textField', 
                 previous: 'previous.receipient.contact',
                 current: 'previous.receipient.contact',
              ),
              SizedBox(
                height: 20
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
            fontSize: 17, 
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