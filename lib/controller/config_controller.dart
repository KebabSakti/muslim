import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../model/config/config.dart';

class ConfigController {
  Future<Config> load() async {
    final storage = await SharedPreferences.getInstance();

    Config configModel = const Config();

    final stringConfig = storage.getString('config');

    if (stringConfig != null) {
      configModel = Config.fromJson(jsonDecode(stringConfig));
    }

    return configModel;
  }

  Future<void> save(Config config) async {
    final storage = await SharedPreferences.getInstance();

    await storage.setString('config', jsonEncode(config.toJson()));
  }
}
