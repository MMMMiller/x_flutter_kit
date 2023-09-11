/// createTime: 2022/07/27 on 10:14
/// desc:
///
/// @author xueml

import 'package:x_flutter_kit/todo_flutter.dart';
import 'package:example/common/api/api_provider.dart';
import 'package:example/domain/request/entity/list_data_entity.dart';

class ListRequest extends ApiRequest<List<ListDataEntity>> {
  ListRequest() : super(null);

  @override
  RequestMethod get method => RequestMethod.get;

  @override
  String get url => 'article/list/$page/json';
}
