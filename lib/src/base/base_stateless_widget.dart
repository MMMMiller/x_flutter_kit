/// createTime: 2021/9/17 on 17:45
/// desc:
///
/// @author xueml

import 'package:flutter/material.dart';
import 'package:x_flutter_kit/src/base/ui_adapter.dart';
import 'package:x_flutter_kit/src/base/ui_widget.dart';

abstract class BaseStatelessWidget extends StatelessWidget
    with UIAdapter, UIWidget {
  const BaseStatelessWidget({Key? key}) : super(key: key);
}
