import '../data/repository/config_repository.dart';
import '../model/config/config.dart';

class ConfigController {
  final ConfigRepository _configRepository;

  ConfigController(this._configRepository);

  Future<Config> show() async {
    final results = await _configRepository.show();

    return results;
  }

  Future<void> update(Config config) async {
    await _configRepository.update(config);
  }
}
