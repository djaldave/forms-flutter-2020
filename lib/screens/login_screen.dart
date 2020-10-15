import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            emailField(),
            passwordField(),
            Container(
              margin: EdgeInsets.only(top: 25.0),
            ),
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
      validator: (String value) {
        //return null if valid
        // other wise string (with the error message) if invalid
        if (!value.contains('@')) {
          return 'Please enter a valid email';
        }
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Enter Password",
        hintText: "Password",
      ),
      validator: (String value) {
        //return null if valid
        // other wise string (with the error message) if invalid
        if (value.length < 4) {
          return 'password must be at least 4 character';
        }
      },
    );
  }

  Widget submitButton() {
    return RaisedButton(
        color: Colors.blue[100],
        child: Text("Submit"),
        onPressed: () {
          print(formKey.currentState.validate());
        });
  }
}
