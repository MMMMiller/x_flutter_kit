import 'package:flutter/material.dart';
import 'package:x_flutter_kit/src/base/base_stateless_widget.dart';
import 'package:x_flutter_kit/src/ui/common_click_widget.dart';

/// createTime: 2022/9/2 on 15:30
/// desc:
///
/// @author xueml
class UnFocusWidget extends BaseStatelessWidget {
  final Widget child;

  const UnFocusWidget({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonClickWidget(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: child,
    );
  }
}
