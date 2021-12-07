import 'package:flutter/material.dart';
import 'package:flutter_mvvm_template/core/init/navigation/INavigationService.dart';

class NavigationService implements INavigationService {
  static NavigationService _instance = NavigationService._init();
  static NavigationService get instance => _instance;
  NavigationService._init();
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  Future<void> navigateToPage({String path, Object data}) async {
    await navigatorKey.currentState.pushNamed(path, arguments: data);
  }
}
