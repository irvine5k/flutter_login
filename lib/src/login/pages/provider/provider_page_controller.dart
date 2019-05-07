import 'package:flutter/material.dart';

class ProviderPageController extends InheritedWidget {
  final PageController controller;
  final Widget child;

  ProviderPageController({this.controller, this.child}) : super(child: child);

  static ProviderPageController of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(ProviderPageController)
        as ProviderPageController;
  }

  void toPage(int page){
    controller.animateToPage(page,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut);
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return oldWidget != this;
  }
}
