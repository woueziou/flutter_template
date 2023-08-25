import 'package:fantassin/app/core/settings/model.dart';
import 'package:fantassin/app/core/theme/theme.dart';
import 'package:fantassin/app/router/router.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sizer/sizer.dart';

class AppEntry extends StatelessWidget {
  const AppEntry({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => ValueListenableBuilder(
        valueListenable: Hive.box(AppSettings.packageName).listenable(),
        builder: (context, value, child) {
          var mode = value.get("darkMode", defaultValue: false) as bool;
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: AppSettings.packageName,
            theme: (mode ? AppTheme.dark : AppTheme.light),
            routeInformationProvider:
                RouteHandler.router.routeInformationProvider,
            routeInformationParser: RouteHandler.router.routeInformationParser,
            routerDelegate: RouteHandler.router.routerDelegate,
          );
        },
      ),
    );
  }
}
