import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/helper/utility.dart';
import '../../model/config/config.dart';
import '../repository/config_repository.dart';

class ConfigLocal implements ConfigRepository {
  @override
  Future<Config> show() async {
    Config results = const Config();
    final storage = await SharedPreferences.getInstance();
    final jsonString = storage.getString('config');

    if (jsonString != null) {
      final parsed = await compute(parseJson, jsonString);
      results = Config.fromJson(parsed);
    }

    return results;
  }

  @override
  Future<void> update(Config config) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString('config', jsonEncode(config.toJson()));
  }
}
