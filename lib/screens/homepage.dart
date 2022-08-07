// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../routes/route_names.dart';
import '../constants.dart';
import '../widgets/auth_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColours.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage('images/wallet_logo.png'),
              height: 250,
            ),
            Text(
              'Wallet Tracker',
              style: GoogleFonts.pacifico(
                color: AppColours.textHeading,
                fontSize: 54,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            AuthButton(
              text: 'Login',
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.login);
              },
              buttonColor: AppColours.bgSky,
              height: 50,
              minWidth: 200,
            ),
            SizedBox(
              height: 20,
            ),
            AuthButton(
              text: 'Register',
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.register);
              },
              buttonColor: AppColours.bgPink,
              height: 50,
              minWidth: 200,
            ),
          ],
        ),
      ),
    );
  }
}
