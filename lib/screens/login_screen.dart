import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      child: Form(
        child: Column(
          children: [
            emailField(),
            passwordField(),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Email Address",
        hintText: "you@example.com",
      ),
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Enter Password",
        hintText: "Password",
      ),
    );
  }

  Widget submitButton() {
    return RaisedButton(
        color: Colors.blue[100], child: Text("Submit"), onPressed: () {});
  }
}
