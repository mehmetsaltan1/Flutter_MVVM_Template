import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvvm_template/core/constants/app/app_constants.dart';
import 'package:flutter_mvvm_template/core/init/cache/locale_manager.dart';
import 'package:flutter_mvvm_template/core/init/navigation/navigation_route.dart';
import 'package:flutter_mvvm_template/core/init/navigation/navigation_service.dart';
import 'package:flutter_mvvm_template/view/test/view/test_view.dart';

import 'core/init/lang/language_manager.dart';

void main() {
  LocaleManager.preferencesinit();
  runApp(EasyLocalization(
      child: MyApp(),
      supportedLocales: LanguageManager.instance.supportedLocales,
      path: ApplicationConstants.LANG_ASSET_PATH));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Testview(),
      onGenerateRoute: NavigaitonRoute.instance.generateRoute,
      navigatorKey: NavigationService.instance.navigatorKey,
    );
  }
}
