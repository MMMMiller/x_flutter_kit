import 'package:flutter/material.dart';
import 'package:x_flutter_kit/src/base/base_stateless_widget.dart';

/// createTime: 2022/9/6 on 16:53
/// desc: 去除安卓水波纹效果
///
/// @author xueml
class RemoveRippleWidget extends BaseStatelessWidget {
  final Widget child;

  const RemoveRippleWidget({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(behavior: _RemoveRippleBehavior(), child: child);
  }
}

class _RemoveRippleBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    final platform = getPlatform(context);
    if (platform == TargetPlatform.android ||
        platform == TargetPlatform.fuchsia) {
      return GlowingOverscrollIndicator(
        showLeading: false,
        showTrailing: false,
        axisDirection: axisDirection,
        color: Theme.of(context).colorScheme.secondary,
        child: child,
      );
    }
    return child;
  }
}
