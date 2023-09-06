/// createTime: 2021/10/14 on 14:47
/// desc:
///
/// @author xueml

import 'package:x_flutter_kit/src/net/base_convert.dart';
import 'package:x_flutter_kit/src/net/base_net_engine.dart';

abstract class BaseNetProvider {
  ///创建网络请求客户端
  BaseNetEngine get engine;

  ///网络数据转换器
  BaseConvert get convert;
}
