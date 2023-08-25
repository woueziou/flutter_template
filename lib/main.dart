import 'package:fantassin/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app/core/services/manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ServiceManager.initApp();
  await ServiceManager.startServices();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.white,
    ),
  );
  runApp(const AppEntry());
}
