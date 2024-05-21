import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecaptchaWidget extends StatefulWidget {
  const RecaptchaWidget({super.key});

  @override
  State<RecaptchaWidget> createState() => _RecaptchaWidgetState();
}

class _RecaptchaWidgetState extends State<RecaptchaWidget> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 301,
      height: 75,
      
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFD3D3D3)),
        color: const Color(0xFFF9F9FA),
      ),
      child: Row(
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
              (states) => const BorderSide(width: 1.0, color: Color(0xFFB3B3B3)),
            ),
          ),
          const Text(
            'I am not a robot',
            style: TextStyle(
              color: Color(0xFF4C4A4B),
              fontSize: 11,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 87)
          ),
          Container(
            width: 50,
            height: 54,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image:AssetImage('assets/images/recaptcha_icon.png') as ImageProvider,
                fit: BoxFit.fitHeight,
              ),
            )
          ),
        ],
      ),
    );
  }
}