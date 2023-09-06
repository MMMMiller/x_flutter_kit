/// createTime: 2021/10/21 on 14:57
/// desc:
///
/// @author xueml

import 'package:x_flutter_kit/src/service/error/domain_exception.dart';

abstract class LoadState {}

class InitialState extends LoadState {}

class LoadingState extends LoadState {}

class ErrorState extends LoadState {
  final DomainException exception;

  ErrorState(this.exception);
}
