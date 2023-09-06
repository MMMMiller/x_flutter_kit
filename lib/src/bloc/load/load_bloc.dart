/// createTime: 2021/10/21 on 14:55
/// desc:
///
/// @author xueml
import 'package:x_flutter_kit/src/base/bloc/base_bloc.dart';
import 'package:x_flutter_kit/src/bloc/load/load_event.dart';
import 'package:x_flutter_kit/src/bloc/load/load_state.dart';
import 'package:x_flutter_kit/src/service/error/domain_exception.dart';

class LoadBloc extends BaseLoadBloc<LoadEvent, LoadState> {
  LoadBloc() : super(InitialState());

  void loading() {
    add(LoadingEvent());
  }

  void loadDone() {
    add(InitialEvent());
  }

  void loadError(DomainException exception) {
    add(ErrorEvent(exception));
  }
}
