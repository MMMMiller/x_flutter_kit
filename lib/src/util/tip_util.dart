import 'package:fluttertoast/fluttertoast.dart';
import 'package:x_flutter_kit/src/service/theme/toast_theme_data.dart';
import 'package:x_flutter_kit/src/ui/dialog/loading_dialog.dart';
import 'package:x_flutter_kit/src/util/object_util.dart';
import 'package:x_flutter_kit/todo_lib.dart';

/// createTime: 2023/4/14 on 20:38
/// desc:
///
/// @author xueml

///显示toast
void showToast(String msg, {ToastThemeData? data}) {
  if (ObjectUtil.isEmpty(msg)) {
    return;
  }
  final ToastThemeData themeData =
      data ?? TodoLib.of(TodoLib.navigatorKey.currentContext!).toastThemeData;
  cancelToast();
  Fluttertoast.showToast(
    msg: msg,
    fontSize: themeData.fontSize,
    textColor: themeData.textColor,
    backgroundColor: themeData.backgroundColor,
    toastLength: themeData.toastLength,
    gravity: themeData.gravity,
  );
}

///取消所有toast
void cancelToast() {
  Fluttertoast.cancel();
}

///显示等待对话框
void showLoading({String? msg}) {
  LoadingDialog.show(msg: msg);
}

///关闭等待对话框
void dismissLoading() {
  LoadingDialog.dismiss();
}
