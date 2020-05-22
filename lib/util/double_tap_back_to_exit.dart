import 'package:flutter/material.dart';
import 'package:flutterctrip/util/toast.dart';

class DoubleTapBackToExitApp extends StatefulWidget {
  final Widget child;
  final Duration duration;

  const DoubleTapBackToExitApp(
      {Key key,
      @required this.child,
      this.duration: const Duration(milliseconds: 2000)})
      : super(key: key);

  @override
  _DoubleTapBackToExitAppState createState() => _DoubleTapBackToExitAppState();
}

class _DoubleTapBackToExitAppState extends State<DoubleTapBackToExitApp> {
  DateTime _lastTime;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: widget.child,
      onWillPop: _isExit,
    );
  }

  Future<bool> _isExit() {
    if (_lastTime == null ||
        DateTime.now().difference(_lastTime) > widget.duration) {
      _lastTime = DateTime.now();
      Toast.show('再次点击退出应用');
      return Future.value(false);
    }
    Toast.cancelToast();
    return Future.value(true);
  }
}
