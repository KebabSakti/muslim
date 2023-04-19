import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../controller/config_controller.dart';

import '../../../model/config/config.dart';

part 'config_state.dart';
part 'config_cubit.freezed.dart';

class ConfigCubit extends Cubit<ConfigState> {
  ConfigCubit() : super(const ConfigState());

  final _configController = ConfigController();

  Future<void> load() async {
    final config = await _configController.load();

    emit(ConfigState(config: config));
  }

  Future<void> update(Config config) async {
    final updatedState = state.copyWith(config: config);

    emit(updatedState);

    _configController.save(updatedState.config);
  }
}
