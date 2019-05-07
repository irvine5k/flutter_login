import 'package:app2/src/login/pages/login/login_page.dart';
import 'package:app2/src/login/pages/provider/provider_page_controller.dart';
import 'package:app2/src/login/pages/signin/signin_page.dart';
import 'package:app2/src/login/pages/signup/signup_page.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 1);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'assets/bg_everest.jpg',
            fit: BoxFit.cover,
          ),
         ProviderPageController(
            controller: _controller,
            child: PageView(
              controller: _controller,
              children: <Widget>[
                SignUpPage(),
                LoginPage(),
                SignInPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
