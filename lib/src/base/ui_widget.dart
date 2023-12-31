/// createTime: 2021/9/17 on 21:43
/// desc:
///
/// @author xueml
import 'package:flutter/material.dart';
import 'package:x_flutter_kit/src/base/ui_adapter.dart';

mixin UIWidget implements UIAdapter {
  EdgeInsets all(double value) {
    return EdgeInsets.all(setWidth(value));
  }

  EdgeInsets symmetric({double vertical = 0.0, double horizontal = 0.0}) {
    return EdgeInsets.symmetric(
      vertical: setWidth(vertical),
      horizontal: setWidth(horizontal),
    );
  }

  EdgeInsets only({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) {
    return EdgeInsets.only(
      left: setWidth(left),
      top: setWidth(top),
      right: setWidth(right),
      bottom: setWidth(bottom),
    );
  }

  SizedBox sizedBox({
    double width = 0,
    double height = 0,
    Widget? child,
  }) {
    return SizedBox(
      width: setWidth(width),
      height: setWidth(height),
      child: child,
    );
  }
}
