/// createTime: 2021/9/17 on 21:22
/// desc:
///
/// @author xueml

import 'package:flutter/material.dart';
import 'package:x_flutter_kit/src/base/ui_adapter.dart';

abstract class BaseStatefulWidget extends StatefulWidget with UIAdapter {
  const BaseStatefulWidget({Key? key}) : super(key: key);
}
