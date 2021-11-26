import 'package:flutter/material.dart';
import 'package:flutter_mvvm_template/core/base/state/base_state.dart';

class Testview extends StatefulWidget {
  Testview({Key? key}) : super(key: key);

  @override
  _TestviewState createState() => _TestviewState();
}

class _TestviewState extends BaseState<Testview> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: dynamicHeight(0.1),
      color: themeData.primaryColor,
    );
  }
}