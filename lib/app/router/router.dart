import 'package:fantassin/app/core/vendors/get_id_locator.dart';
import 'package:fantassin/app/views/home/home.ui.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import 'extension.dart';

class RouteHandler {
  static GoRouter router = GoRouter(
      navigatorKey: locator.get<NavigationExtension>().navigatoryKey,
      debugLogDiagnostics: true,
      initialLocation: "/",
      observers: <NavigatorObserver>[
        // AppRouteObserver()
      ],
      routes: [
        GoRoute(
          path: "/",
          // path: "/mlresult/:imgPath/:resdata",
          name: "home",
          builder: (context, state) {
            return const HomeUi();
          },
        ),
      ]);
}
