/// createTime: 2021/9/29 on 17:13
/// desc:
///
/// @author xueml

abstract class TestState {
  final String? data;

  TestState(this.data);
}

class TestInitialState extends TestState {
  TestInitialState(String? data) : super(data);
}
