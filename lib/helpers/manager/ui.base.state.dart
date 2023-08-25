import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../../app/core/vendors/get_id_locator.dart';
import 'ui.base.controller.dart';

class BaseUi<T extends BaseController> extends StatefulWidget {
  final Widget Function(BuildContext context, T viewController, Widget? child)
      builder;

  final Function(T)? onModelReady;
  final Function(T)? onDispose;
  const BaseUi(
      {super.key, required this.builder, this.onModelReady, this.onDispose});

  @override
  State<BaseUi> createState() => _BaseUiState<T>();
}

class _BaseUiState<T extends BaseController> extends State<BaseUi<T>> {
  T model = locator<T>();
  @override
  void initState() {
    final function = widget.onModelReady;
    if (function != null) {
      function(model);
    }
    super.initState();
  }

  @override
  void dispose() {
    final function = widget.onDispose;
    if (function != null) {
      debugPrint("dispoing ui");
      function(model);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>(
      create: (_) => locator<T>(),
      child: Consumer<T>(builder: widget.builder),
    );
  }
}
