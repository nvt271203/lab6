import 'package:flutter/material.dart';
import 'package:lab6/constants.dart';
import 'package:lab6/screens/login_screen.dart';

class RegistrationScreen extends StatefulWidget {
  static String id = 'register_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              keyboardType:  TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
                email = value;
              },
              decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your Email'),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                password =  value;
              },
              decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your Password'),
            ),
            SizedBox(
              height: 24.0,
            ),
           RoundButton(colour: Colors.blueAccent, title: 'Register', onPressed: (){
             print(email);
             print(password);
           }),
          ],
        ),
      ),
    );
  }
}
