import '../../model/config/config.dart';

abstract class ConfigRepository {
  Future<Config> show();
  Future<void> update(Config config);
}
