import 'package:app2/src/login/pages/provider/provider_page_controller.dart';
import 'package:app2/src/login/widgets/circular_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      color: Theme.of(context).accentColor.withOpacity(0.9),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 30),
          Icon(
            Icons.headset_mic,
            size: 50,
            color: Colors.white,
          ),
          SizedBox(height: 20),
          RichText(
            text: TextSpan(
              style: TextStyle(fontSize: 20),
              children: <TextSpan>[
                TextSpan(text: "Awesome"),
                TextSpan(
                  text: "App",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(height: 120),
          CircularButton(
            label: "SIGN UP",
            color: Colors.transparent,
            borderColor: Colors.white,
            onTap: () {
              ProviderPageController.of(context).toPage(0);
            },
          ),
          SizedBox(height: 30),
          CircularButton(
              label: "LOGIN",
              color: Colors.white,
              labelColor: Colors.redAccent,
              onTap: () {
                ProviderPageController.of(context).toPage(2);
              }),
        ],
      ),
    );
  }
}
