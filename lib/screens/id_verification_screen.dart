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
  int step;
  bool isDirection;
  String btnTxt;

  VerifyIdScreen({
    this.step = 1,
    this.isDirection = false,
    this. btnTxt = '',
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
  nextStep(){
    setState(() {
      if(widget.isDirection == true){
        widget.isDirection = false;
      } else {
        widget.step++;       
        widget.isDirection = true;
      }
    });
    print(widget.isDirection);
    print(widget.step.toString());
  }
  @override
  void initState() {
    // TODO: implement initState
    widget.step = 1;
    widget.isDirection = false;
    widget. btnTxt = '';
    super.initState();
  }

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
              if( widget.step == 1)...[
                VerifySelfieView(),
                // Spacer(),
                // Padding(
                //   padding: EdgeInsets.fromLTRB(45, 0, 45, 50),
                //   child: Align(
                //     alignment: Alignment.bottomCenter,
                //     child:  CustomButton(
                //       isSmall: false, 
                //       btnText: 'Continue', 
                //       height: 49, 
                //       width: double.infinity, 
                //       isFilled: true, 
                //       isBlack: false, 
                //       onPressed: () => setState(() {
                //         widget.step= 2;
                //         widget.isDirection = true;
                //       })
                //     )
                //   )
                // ), 
              ],
              if(widget.step == 2)...[
                StatefulBuilder(
                    builder: (BuildContext context, setState) {
                      return VerifyWorkPermitView(
                        isDirection: widget.isDirection,
                      );
                    }
                  ),
                // Spacer(),
                // Padding(
                //   padding: EdgeInsets.fromLTRB(45, 0, 45, 50),
                //   child: Align(
                //     alignment: Alignment.bottomCenter,
                //     child:  CustomButton(
                //       isSmall: false, 
                //       btnText: widget.isDirection ? 'Continue ' : 'Next',
                //       height: 49, 
                //       width: double.infinity, 
                //       isFilled: true, 
                //       isBlack: false, 
                //       onPressed: () => {
                //         setState(() {
                //           if(widget.isDirection == true){
                //             widget.isDirection = false;
                //           } else {
                //             widget.step++;       
                //             widget.isDirection = true;
                //           }
                //         }),
                //         print(widget.isDirection),
                //         print(widget.step.toString())
                //       }
                //     )
                //   )
                // ) 
              ],
              Spacer(),
              Padding(
                padding: EdgeInsets.fromLTRB(45, 0, 45, 75),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child:  CustomButton(
                    isSmall: false, 
                    btnText: !widget.isDirection ? 'Continue ' : 'Next',
                    height: 49, 
                    width: double.infinity, 
                    isFilled: true, 
                    isBlack: false, 
                    onPressed: () => nextStep(),
                  )
                )
              ) ,
            ],
          )
        )
      ],
    )
   );
   
  }
}