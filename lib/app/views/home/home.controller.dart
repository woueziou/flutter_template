import 'package:fantassin/helpers/manager/ui.base.controller.dart';

class HomeController extends BaseController {
  int count = 0;
  void increment() {
    count++;
    notifyListeners();
  }
}
