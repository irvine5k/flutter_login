import 'package:app2/src/login/widgets/circular_button.dart';
import 'package:app2/src/login/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      color: Colors.white.withOpacity(0.9),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.headset_mic,
            size: 50,
            color: Theme.of(context).accentColor,
          ),
          SizedBox(height: 50),
          CustomTextField(label: "EMAIL", hint: "name@example.com"),
          SizedBox(height: 25),
          CustomTextField(label: "PASSWORD", hint: "********"),
          SizedBox(height: 25),
          CustomTextField(label: "CONFIRM PASSWORD", hint: "********"),
          SizedBox(height: 25),
          Container(
            width: double.infinity,
            child: InkWell(
              child: Text(
                'Already have an account?',
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).accentColor),
              ),
            ),
          ),
          SizedBox(height: 40),
          CircularButton(label: "SIGN UP"),
        ],
      ),
    );
  }
}
