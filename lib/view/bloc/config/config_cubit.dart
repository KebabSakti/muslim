import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '../../../controller/bookmark_controller_other.dart';
import '../../../controller/config_controller_other.dart';
import '../../../controller/dzikir_controller_other.dart';
import '../../../model/config/config.dart';

part 'config_cubit.freezed.dart';
part 'config_state.dart';

class ConfigCubit extends Cubit<ConfigState> {
  ConfigCubit() : super(const ConfigState());

  final _configController = GetIt.I<ConfigController>();
  final _dzikirController = GetIt.I<DzikirController>();
  final _bookmarkController = GetIt.I<BookmarkController>();

  Future<void> load() async {
    Config config = await _configController.show();

    if (!config.bookmark) {
      final dzikirs = await _dzikirController.find();
      await _bookmarkController.init(dzikirs);

      config = config.copyWith(bookmark: true);
      await _configController.update(config);
    }

    emit(ConfigState(config: config));
  }

  Future<void> update(Config config) async {
    final updatedState = state.copyWith(config: config);

    emit(updatedState);

    _configController.update(updatedState.config);
  }
}
