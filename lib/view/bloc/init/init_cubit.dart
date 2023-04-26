import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../model/bookmark/bookmark.dart';

import '../../../controller/bookmark_controller.dart';
import '../../../controller/config_controller.dart';
import '../../../controller/dzikir_controller.dart';
import '../../../model/config/config.dart';
import '../../../model/init/init.dart';

part 'init_cubit.freezed.dart';
part 'init_state.dart';

class InitCubit extends Cubit<InitState> {
  InitCubit() : super(const InitState());

  final _configController = ConfigController();
  final _dzikirController = DzikirController();
  final _bookmarkController = BookmarkController();

  Future load(BuildContext context) async {
    final dzikirs = await _dzikirController.load(context);
    final bookmarks = await _bookmarkController.init(dzikirs);
    final config = await _configController.load();

    emit(InitState(
        init: Init(config: config, dzikirs: dzikirs, bookmarks: bookmarks)));
  }

  void setConfig(Config config) {
    final updatedState = state.init.copyWith(config: config);

    emit(InitState(init: updatedState));

    _configController.save(updatedState.config);
  }

  void setBookmark(List<Bookmark> bookmarks) {
    final updatedState = state.init.copyWith(bookmarks: bookmarks);

    emit(InitState(init: updatedState));

    _bookmarkController.save(updatedState.bookmarks);
  }
}
