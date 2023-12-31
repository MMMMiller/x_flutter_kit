/// createTime: 2021/9/29 on 16:49
/// desc:
///
/// @author xueml

import 'package:x_flutter_kit/src/base/bloc/base_event.dart';
import 'package:x_flutter_kit/src/base/loading_state.dart';
import 'package:x_flutter_kit/src/bloc/load/load_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:x_flutter_kit/src/service/error/domain_exception.dart';

abstract class BaseLoadBloc<E extends BaseEvent, S> extends Bloc<E, S> {
  BaseLoadBloc(S initialState) : super(initialState) {
    _init();
  }

  void _init() {
    ///分发至event处理
    on<E>((E event, Emitter<S> emit) async {
      final S resultState = await event.on(this, state);
      emit.call(resultState);
      onStateChange(resultState);
    });
  }

  ///状态变更
  void onStateChange(S state) {}
}

abstract class BaseBloc<E extends BaseEvent, S> extends BaseLoadBloc<E, S> {
  LoadingState? _loadingState;
  final LoadBloc _loadBloc = LoadBloc();

  LoadBloc get loadBloc => _loadBloc;

  Future<void> setState(LoadingState? state) async {
    _loadingState = state;
  }

  BaseBloc(S initialState) : super(initialState);

  ///view层接受bloc层事件
  void sendEventToView(String type, [data]) {
    _loadingState?.sendEventToView(type, data);
  }

  ///配合BlocLoadWidget使用，开始加载
  void loading() {
    loadBloc.loading();
  }

  ///配合BlocLoadWidget使用，加载完成
  void loadDone() {
    loadBloc.loadDone();
  }

  ///配合BlocLoadWidget使用，加载失败
  void loadError(DomainException exception) {
    loadBloc.loadError(exception);
  }

  @override
  Future<void> close() async {
    await loadBloc.close();
    await super.close();
  }
}
