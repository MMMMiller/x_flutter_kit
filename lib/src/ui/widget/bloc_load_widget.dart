/// createTime: 2021/10/21 on 15:37
/// desc:
///
/// @author xueml

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:x_flutter_kit/src/base/base_stateless_widget.dart';
import 'package:x_flutter_kit/src/bloc/load/load_bloc.dart';
import 'package:x_flutter_kit/src/bloc/load/load_state.dart';
import 'package:x_flutter_kit/src/service/error/domain_exception.dart';
import 'package:x_flutter_kit/src/ui/common_error_widget.dart';
import 'package:x_flutter_kit/src/ui/widget/circular_progress_widget.dart';

typedef ErrorWidgetBuilder = Widget? Function(
  BuildContext context,
  DomainException exception,
);

class BlocLoadWidget extends BaseStatelessWidget {
  final Widget child;
  final LoadBloc loadBloc;
  final VoidCallback? reload;
  final ErrorWidgetBuilder? errorBuilder;

  const BlocLoadWidget({
    required this.child,
    required this.loadBloc,
    required this.reload,
    this.errorBuilder,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoadBloc, LoadState>(
      bloc: loadBloc,
      builder: (BuildContext context, LoadState state) {
        if (state is LoadingState) {
          return SizedBox.expand(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircularProgressWidget(),
              ],
            ),
          );
        }
        if (state is ErrorState) {
          return _errorWidget(context, state.exception);
        }
        return child;
      },
    );
  }

  Widget _errorWidget(BuildContext context, DomainException exception) {
    final w = errorBuilder?.call(context, exception);
    if (w == null) {
      return CommonErrorWidget(
        onPressed: reload,
      );
    }
    return w;
  }
}
