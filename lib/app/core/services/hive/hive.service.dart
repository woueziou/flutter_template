import 'package:fantassin/app/core/settings/model.dart';
import 'package:hive/hive.dart';

class HiveService {
  // late Box appbox;
  void registerAdapter() {
    // Hive.registerAdapter<Ticket>(TicketAdapter(), override: true);
  }

  Future<void> startService() async {
    registerAdapter();
    await initBoxes();
  }

  Future<void> initBoxes() async {
    await Hive.openBox(AppSettings.packageName);
  }
}
