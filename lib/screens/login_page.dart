// ignore_for_file: prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors, avoid_print, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
import '../routes/route_names.dart';
import '../widgets/input_field.dart';
import '../widgets/auth_button.dart';

class LoginPage extends StatelessWidget {
  final _usernameTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColours.background,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('images/wallet_logo.png'),
                  height: 250,
                ),
                Text(
                  'Login',
                  style: GoogleFonts.pacifico(
                    color: AppColours.textHeading,
                    fontSize: 54,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                InputField(
                  textController: _usernameTextController,
                  obscure: false,
                  onChanged: (value) {
                    print(value);
                  },
                  hintText: 'Username',
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 20,
                ),
                InputField(
                  textController: _passwordTextController,
                  obscure: true,
                  onChanged: (value) {
                    print(value);
                  },
                  hintText: 'Password',
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 20,
                ),
                AuthButton(
                  buttonColor: AppColours.bgSky,
                  text: 'Login',
                  onPressed: () {
                    // implement login feature of app
                    // proceed to next screen
                  },
                  height: 50,
                  minWidth: 180,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, RouteNames.register);
                  },
                  child: Text(
                    'New here? Register first',
                    style: GoogleFonts.lato(
                      color: Colors.grey.shade300,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
