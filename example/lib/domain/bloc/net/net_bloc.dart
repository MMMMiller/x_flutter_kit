/// createTime: 2021/10/15 on 11:54
/// desc:
///
/// @author xueml

import 'package:x_flutter_kit/todo_flutter.dart';
import 'package:example/domain/bloc/net/net_event.dart';
import 'package:example/domain/bloc/net/net_state.dart';

class NetBloc extends BaseBloc<NetEvent, NetState> {
  NetBloc() : super(NetInitialState(null));

  void get() {
    add(GetEvent());
  }

  void post() {
    add(PostEvent());
  }
}
