import 'package:flutter/material.dart';

class LanguageManager {
  static LanguageManager _instance;
  static LanguageManager get instance {
    if (_instance == null)
      _instance = LanguageManager._init(); //Burada yaptığımız işlemde
    // dil öğemizin nesnesini asla boş bırakmayıp ayrıca dışarıdan nesne üretilmesine
    //izin vermedik.
    return _instance;
  }

  LanguageManager._init();
  final enLocale = Locale("en", "US");
  List<Locale> get supportedLocales => [enLocale];
}
