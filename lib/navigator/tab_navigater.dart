import 'package:flutter/material.dart';
import 'package:flutterctrip/util/double_tap_back_to_exit.dart';

class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  @override
  Widget build(BuildContext context) {
    return DoubleTapBackToExitApp(
      child: Scaffold(
        body: Center(
          child: Text('loading..'),
        ),
      ),
    );
  }
}
