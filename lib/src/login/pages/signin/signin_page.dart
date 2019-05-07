import 'package:app2/src/login/widgets/circular_button.dart';
import 'package:app2/src/login/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    Widget _textForgot() {
      return Container(
        width: double.infinity,
        child: InkWell(
          child: Text(
            'Forgot Password?',
            textAlign: TextAlign.right,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).accentColor),
          ),
        ),
      );
    }

    Widget _lineTextLine() {
      return Row(
        children: <Widget>[
          Expanded(
            child: Divider(color: Colors.black, height: 15),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'OR CONNECT WITH',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Divider(color: Colors.black, height: 15),
          ),
        ],
      );
    }

    Widget _inputs() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 50),
          CustomTextField(label: "EMAIL", hint: "name@example.com"),
          SizedBox(height: 25),
          CustomTextField(label: "PASSWORD", hint: "********"),
          SizedBox(height: 25),
        ],
      );
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      color: Colors.white.withOpacity(0.9),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(height: 80),
          Icon(
            Icons.headset_mic,
            size: 50,
            color: Theme.of(context).accentColor,
          ),
          Spacer(),
          _inputs(),
          _textForgot(),
          SizedBox(height: 40),
          CircularButton(label: "LOGIN"),
          SizedBox(height: 25),
          _lineTextLine(),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: CircularButton(
                  label: "FACEBOOK",
                  color: Colors.blue[800],
                  icon: Icon(
                    FontAwesomeIcons.facebookF,
                    color: Colors.white,
                    size: 14,
                  ),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: CircularButton(
                  label: "GOOGLE",
                  color: Colors.red[600],
                  icon: Icon(
                    FontAwesomeIcons.google,
                    color: Colors.white,
                    size: 14,
                  ),
                ),
              ),
            ],
          ),
          Container(height: 50),
        ],
      ),
    );
  }
}
