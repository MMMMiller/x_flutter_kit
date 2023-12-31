import 'package:flutter/material.dart';
import 'package:x_flutter_kit/generated/assets/todo_flutter_assets.dart';
import 'package:x_flutter_kit/todo_flutter.dart';

/// createTime: 2023/4/23 on 11:13
/// desc:
///
/// @author xueml
class CommonErrorWidget extends BaseStatelessWidget {
  final VoidCallback? onPressed;

  const CommonErrorWidget({this.onPressed, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: only(top: 112),
      child: Column(
        children: [
          const CommonImage(
            asset: TodoFlutterAssets.icError,
            size: 86,
          ),
          Padding(
            padding: only(top: 4),
            child: const CommonText(
              '系统错误',
              fontSize: 12,
              color: Color(0xFF161619),
              fontWeight: FontWeight.w300,
            ),
          ),
          CommonButton(
            '请重试',
            fontSize: 12,
            textColor: const Color(0xFF161619),
            fontWeight: FontWeight.w300,
            borderColor: const Color(0xFF161619),
            color: Colors.white,
            padding: symmetric(vertical: 8, horizontal: 12),
            margin: only(top: 33),
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}
