/// createTime: 2022/7/26 on 10:16
/// desc:
///
/// @author xueml
import 'package:flutter/material.dart';
import 'package:x_flutter_kit/src/service/route/router_history_stack.dart';
import 'package:x_flutter_kit/src/service/route/router_util.dart';
import 'package:x_flutter_kit/src/ui/dialog/loading_dialog.dart';
import 'package:x_flutter_kit/todo_lib.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TodoApp extends StatelessWidget {
  final String title;
  final ThemeData? theme;
  final Widget home;
  final Size designSize;
  final TodoLibData? libData;
  final bool debugShowCheckedModeBanner;
  final Iterable<Locale> supportedLocales;
  final List<NavigatorObserver> navigatorObservers;
  final Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates;

  const TodoApp({
    required this.home,
    this.title = '',
    this.theme,
    this.libData,
    this.localizationsDelegates,
    this.debugShowCheckedModeBanner = true,
    this.designSize = const Size(375, 667),
    this.navigatorObservers = const <NavigatorObserver>[],
    this.supportedLocales = const <Locale>[Locale('en', 'US')],
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: designSize,
      builder: (_, child) {
        return TodoLib(
          data: libData,
          child: MaterialApp(
            home: home,
            title: title,
            theme: theme,
            supportedLocales: supportedLocales,
            navigatorKey: TodoLib.navigatorKey,
            navigatorObservers: navigatorObservers + [RouterHistoryObserver()],
            localizationsDelegates: localizationsDelegates,
            debugShowCheckedModeBanner: debugShowCheckedModeBanner,
            onGenerateRoute: RouterUtil.instance.generator(),
            builder: (BuildContext context, Widget? widget) {
              return LoadingDialogInit(
                child: MediaQuery(
                  data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
                  child: widget ?? Container(),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
