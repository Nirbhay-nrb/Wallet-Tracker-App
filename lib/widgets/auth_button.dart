// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthButton extends StatelessWidget {
  final Color buttonColor;
  final String text;
  final Function onPressed;
  AuthButton({
    required this.buttonColor,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: buttonColor,
      height: 50,
      minWidth: 200,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: GoogleFonts.roboto(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
