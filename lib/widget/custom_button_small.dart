import 'package:flutter/material.dart';
import 'package:fintech_app/constants.dart';

class CustomButtonSmall extends StatelessWidget{
  final Function()? onPressed;
  final String btnText;
  final bool isFilled;
  bool? isSmall = false;

  CustomButtonSmall({super.key, required this.btnText, required this.isFilled,  this.isSmall, this.onPressed});

  @override
  Widget build(BuildContext context) {
    if(isSmall = true){
      return SizedBox(
      //height: 17,
      //width: 54,
        child: ElevatedButton(
          onPressed:() {
            if(btnText=='Details'){
              Navigator.of(context).pushNamed('/loandetail');
            }
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF000000)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              )
            ),
            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(
            btnText,
            style: TextStyle(
              fontFamily: 'Poppins',
              color: const Color(0xFFFFFFFF),
              fontWeight: FontWeight.w400,
              fontSize: 10,
              height: 1.5
            ),
          ),
        )
      );
    } else {
      return Container(
      width: 89.0,
      height: 36.0,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(10.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 130, 255, 0.5),
            spreadRadius: 0,
            blurRadius: 13,
            offset: Offset(0, 6),
          )
        ],
        color: (Color(0xFF0082FF)) 
      ),
      child: Center(
        child: GestureDetector(
          onTap: (){
            // context.read<LogInBloc>().add(FormSubmitted());
            if(btnText=='Pay'){
              Navigator.of(context).pushNamed('/requestpayment');
            }
            if(btnText=='Details'){
              Navigator.of(context).pushNamed('/loandetail');
            }
          },
          child: Text(
            btnText,
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontWeight: FontWeight.w600,
              fontSize: 15,
              height: 1.5
            ),
          ),
        )
      )
    );
    }
    
  }
}
