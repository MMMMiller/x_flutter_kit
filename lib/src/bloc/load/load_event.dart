/// createTime: 2021/10/21 on 14:56
/// desc:
///
/// @author xueml

import 'package:x_flutter_kit/src/base/bloc/base_event.dart';
import 'package:x_flutter_kit/src/bloc/load/load_bloc.dart';
import 'package:x_flutter_kit/src/bloc/load/load_state.dart';
import 'package:x_flutter_kit/src/service/error/domain_exception.dart';

abstract class LoadEvent extends BaseEvent<LoadBloc, LoadState> {}

class InitialEvent extends LoadEvent {
  @override
  Future<LoadState> on(LoadBloc bloc, LoadState currentState) async {
    return InitialState();
  }
}

class LoadingEvent extends LoadEvent {
  @override
  Future<LoadState> on(LoadBloc bloc, LoadState currentState) async {
    return LoadingState();
  }
}

class ErrorEvent extends LoadEvent {
  final DomainException exception;

  ErrorEvent(this.exception);

  @override
  Future<LoadState> on(LoadBloc bloc, LoadState currentState) async {
    return ErrorState(exception);
  }
}
