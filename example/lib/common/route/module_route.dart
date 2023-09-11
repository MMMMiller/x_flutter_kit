/// createTime: 2021/9/17 on 18:12
/// desc:
///
/// @author xueml
import 'package:x_flutter_kit/todo_flutter.dart';
import 'package:example/generated/route/example_route.dart';
import 'package:example/view/app_update_page.dart';
import 'package:example/view/bloc_page.dart';
import 'package:example/view/button_page.dart';
import 'package:example/view/dialog_page.dart';
import 'package:example/view/image_page.dart';
import 'package:example/view/input_page.dart';
import 'package:example/view/net_page.dart';
import 'package:example/view/refresh_page.dart';
import 'package:example/view/sliver_page.dart';
import 'package:example/view/text_page.dart';
import 'package:example/view/toast_page.dart';

class ModuleRoute {
  ///添加模块路由
  static void initRoute() {
    RouterUtil.instance.addRoute(ExampleRoute.textPage,
        (Map<String, dynamic> map) {
      return TextPage();
    });
    RouterUtil.instance.addRoute(ExampleRoute.buttonPage,
        (Map<String, dynamic> map) {
      return ButtonPage();
    });
    RouterUtil.instance.addRoute(ExampleRoute.imagePage,
        (Map<String, dynamic> map) {
      return ImagePage();
    });
    RouterUtil.instance.addRoute(ExampleRoute.toastPage,
        (Map<String, dynamic> map) {
      return const ToastPage();
    });
    RouterUtil.instance.addRoute(ExampleRoute.inputPage,
        (Map<String, dynamic> map) {
      return InputPage();
    });
    RouterUtil.instance.addRoute(ExampleRoute.dialogPage,
        (Map<String, dynamic> map) {
      return const DialogPage();
    });
    RouterUtil.instance.addRoute(ExampleRoute.blocPage,
        (Map<String, dynamic> map) {
      return const BlocPage();
    });
    RouterUtil.instance.addRoute(ExampleRoute.netPage,
        (Map<String, dynamic> map) {
      return const NetPage();
    });
    RouterUtil.instance.addRoute(ExampleRoute.refreshPage,
        (Map<String, dynamic> map) {
      return const RefreshPage();
    });
    RouterUtil.instance.addRoute(ExampleRoute.appUpdatePage,
        (Map<String, dynamic> map) {
      return const AppUpdatePage();
    });
    RouterUtil.instance.addRoute(ExampleRoute.sliverPage,
        (Map<String, dynamic> map) {
      return const SliverPage();
    });
  }
}
