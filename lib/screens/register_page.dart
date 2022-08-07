// ignore_for_file: avoid_print, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
import '../routes/route_names.dart';
import '../widgets/auth_button.dart';
import '../widgets/input_field.dart';

class RegisterPage extends StatelessWidget {
  final _nameTextController = TextEditingController();
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
                  'Register',
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
                  textController: _nameTextController,
                  obscure: false,
                  onChanged: (value) {
                    print(value);
                  },
                  hintText: 'Set a username',
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 20,
                ),
                InputField(
                  textController: _usernameTextController,
                  obscure: false,
                  onChanged: (value) {
                    print(value);
                  },
                  hintText: 'Email',
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
                  text: 'Register',
                  onPressed: () {
                    // implement register feature of app
                    // proceed to next screen
                  },
                  height: 50,
                  minWidth: 180,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, RouteNames.login);
                  },
                  child: Text(
                    'Existing user? Login here',
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
