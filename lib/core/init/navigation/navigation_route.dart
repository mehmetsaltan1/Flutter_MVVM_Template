import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_mvvm_template/core/components/custom_card/not_found_navigation.dart';
import 'package:flutter_mvvm_template/core/constants/navigaiton/navigation_constants.dart';
import 'package:flutter_mvvm_template/view/test/view/test_view.dart';

class NavigaitonRoute {
  static NavigaitonRoute _instance = NavigaitonRoute._init();
  static NavigaitonRoute get instance => _instance;
  NavigaitonRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.TEST_VIEW:
        return MaterialPageRoute(builder: (context) => Testview());

      default:
        return MaterialPageRoute(
            builder: (context) => NotFoundNavigationPage());
    }
  }
}
