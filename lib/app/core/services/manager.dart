import 'package:fantassin/app/core/services/hive/hive.service.dart';
import 'package:fantassin/app/core/vendors/get_id_locator.dart';
import 'package:fantassin/app/views/home/home.controller.dart';
import 'package:fantassin/app/views/splash/splash.controller.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../router/extension.dart';

class ServiceManager {
  static Future<void> initApp() async {
    await Hive.initFlutter();
    await _initServices();
    _initControllers();
  }

  static Future<void> _initServices() async {
    await Hive.openBox("appbox");
    locator.registerLazySingleton<NavigationExtension>(
        () => NavigationExtension());
    locator.registerLazySingleton<HiveService>(() => HiveService());
  }

  static void _initControllers() {
    locator.registerLazySingleton<SplashController>(() => SplashController());
    locator.registerLazySingleton<HomeController>(() => HomeController());
  }

  static Future<void> startServices() async {
    await locator<HiveService>().startService();
  }
}
