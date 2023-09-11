/// createTime: 2021/9/29 on 17:11
/// desc:
///
/// @author xueml

import 'dart:math';

import 'package:x_flutter_kit/todo_flutter.dart';
import 'package:example/domain/bloc/bloc/test_bloc.dart';
import 'package:example/domain/bloc/bloc/test_state.dart';

abstract class TestEvent extends BaseEvent<TestBloc, TestState> {}

class InitEvent extends TestEvent {
  @override
  Future<TestState> on(TestBloc bloc, TestState currentState) async {
    showLoading();
    final result = Random().nextInt(9999).toString();
    await Future.delayed(const Duration(milliseconds: 1500));
    dismissLoading();
    return TestInitialState(result);
  }
}
