import 'package:flutter/material.dart';
import 'package:x_flutter_kit/generated/assets/todo_flutter_assets.dart';
import 'package:x_flutter_kit/todo_flutter.dart';

/// createTime: 2023/4/23 on 11:13
/// desc:
///
/// @author xueml
class CommonEmptyWidget extends BaseStatelessWidget {
  const CommonEmptyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: only(top: 112),
      child: Column(
        children: [
          const CommonImage(
            asset: TodoFlutterAssets.icEmpty,
            size: 86,
          ),
          Padding(
            padding: only(top: 4),
            child: const CommonText(
              '暂无数据',
              fontSize: 12,
              color: Color(0xFF161619),
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
