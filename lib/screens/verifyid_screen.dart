import 'package:fintech_app/layout/default.dart';
import 'package:fintech_app/widget/custom_button.dart';
import 'package:fintech_app/widget/verify_selfie.dart';
import 'package:fintech_app/widget/verify_workpermit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

enum VerifyingStep { step1, step2, step3, step4, step5, step6, step7, submitted }

class VerifyIdScreen extends StatefulWidget {

  VerifyIdScreen({
    super.key
  });

   static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => DefaultScaffold(
        bodyWidget: VerifyIdScreen(),
        showAppBar: true,
        isShowLeading: true,
        isBodyScroll: false,
        withNavbar: false,
      )
    );
  }

  @override
  State<VerifyIdScreen> createState() => _VerifyIdScreenState();
}

class _VerifyIdScreenState extends State<VerifyIdScreen> {
  int _step = 1;
  bool isDirection = true;

  String btnTxt = '';

  @override
  Widget build(BuildContext context) {
   return Container(
    height: MediaQuery.of(context).size.height - kToolbarHeight ,
    child: Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Expanded(
          //height: MediaQuery.of(context).size.height ,
          child: Column(
            children: [
              if( _step == 1)...[
                VerifySelfieView(),
                Spacer(),
                Padding(
                  padding: EdgeInsets.fromLTRB(45, 0, 45, 50),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child:  CustomButton(
                      isSmall: false, 
                      btnText: 'Continue', 
                      height: 49, 
                      width: double.infinity, 
                      isFilled: true, 
                      isBlack: false, 
                      onPressed: () => setState(() {
                        _step= 2;
                        isDirection = true;
                      })
                    )
                  )
                ), 
              ],
              if(_step == 2)...[
                StatefulBuilder(
                    builder: (BuildContext context, setState) {
                      return VerifyWorkPermitView(
                        isDirection: isDirection,
                      );
                    }
                  ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.fromLTRB(45, 0, 45, 50),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child:  CustomButton(
                      isSmall: false, 
                      btnText: isDirection ? 'Continue ' : 'Next',
                      height: 49, 
                      width: double.infinity, 
                      isFilled: true, 
                      isBlack: false, 
                      onPressed: () => {
                        setState(() {
                          if(isDirection == true){
                            isDirection = false;
                          } else {
                            _step++;       
                            isDirection = true;
                          }
                        }),
                        print(isDirection),
                        print(_step.toString())
                      }
                    )
                  )
                ) 
              ],
              // Padding(
              //     padding: EdgeInsets.fromLTRB(45, 0, 45, 50),
              //     child: Align(
              //       alignment: Alignment.bottomCenter,
              //       child:  CustomButton(
              //         isSmall: false,    
              //         btnText: isDirection ? 'Continue ' : 'Next',
              //         height: 49, 
              //         width: double.infinity, 
              //         isFilled: true, 
              //         isBlack: false, 
              //         onPressed: () => {
              //           setState(() {
              //             if(isDirection == true && _step != 1){
              //               isDirection = false;
              //             } else _step++;
              //           }),
              //           print(isDirection),
              //           print(_step.toString())
              //         }
              //       )
              //     )
              //   ) 
              
            ],
          )
        )
      ],
    )
   );
   
  }
}