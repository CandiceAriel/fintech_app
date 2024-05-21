import 'package:flutter/material.dart';
import 'package:fintech_app/constants.dart';

class CustomTextField extends StatelessWidget {
  final controller;
  final String hinttext;

  const CustomTextField({super.key, this.controller, required this.hinttext});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        fontSize: 17, 
        height: 1.3,
        color: Color(0xFFB5B5B5)
      ),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.0),
          borderSide: const BorderSide(
            width: 0, 
            style: BorderStyle.none,
          ),
        ),
        filled: true,
        fillColor: textFieldFillColor,
        hintText: hinttext,
      ),
      controller: controller, );
  }
}