/// createTime: 2021/10/15 on 13:40
/// desc:
///
/// @author xueml

import 'package:x_flutter_kit/todo_flutter.dart';
import 'package:example/common/api/api_provider.dart';
import 'package:example/domain/request/entity/get_entity.dart';

class NetGetRequest extends ApiRequest<List<GetEntity>> {
  NetGetRequest() : super({'id': '323', 'name': 'azhon'});

  @override
  RequestMethod get method => RequestMethod.get;

  @override
  String get url => 'banner/json';
}

class NetPostRequest extends ApiRequest {
  NetPostRequest() : super({'id': '323', 'name': 'azhon'});

  @override
  RequestMethod get method => RequestMethod.post;

  @override
  String get url => 'lg/uncollect_originId/2333/json';
}
