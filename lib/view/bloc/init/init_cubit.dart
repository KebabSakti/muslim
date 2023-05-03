import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '../../../controller/bookmark_controller.dart';
import '../../../controller/config_controller.dart';
import '../../../controller/dzikir_controller.dart';
import '../../../model/bookmark/bookmark.dart';
import '../../../model/config/config.dart';
import '../../../model/init/init.dart';

part 'init_cubit.freezed.dart';
part 'init_state.dart';

class InitCubit extends Cubit<InitState> {
  InitCubit() : super(const InitState());

  final _configController = GetIt.I<ConfigController>();
  final _dzikirController = GetIt.I<DzikirController>();
  final _bookmarkController = GetIt.I<BookmarkController>();

  Future load() async {
    final config = await _configController.show();
    final dzikirs = await _dzikirController.find();
    List<Bookmark> bookmarks = await _bookmarkController.find();

    if (bookmarks.isEmpty) {
      bookmarks = await _bookmarkController.init(dzikirs);
    }

    emit(InitState(
        init: Init(config: config, dzikirs: dzikirs, bookmarks: bookmarks)));
  }

  Future setConfig(Config config) async {
    final updatedData = state.init.copyWith(config: config);

    _configController.update(updatedData.config);

    emit(state.copyWith(init: updatedData, reset: false));
  }

  Future setBookmark(Bookmark bookmark) async {
    _bookmarkController.upsert(bookmark);

    final updatedData = List<Bookmark>.from(state.init.bookmarks.map((e) {
      if (e.id == bookmark.id) {
        return bookmark;
      }

      return e;
    }));

    emit(state.copyWith(
        init: state.init.copyWith(bookmarks: updatedData), reset: false));
  }

  Future delete(String bookmarkId) async {
    await _bookmarkController.delete(bookmarkId);
    final bookmarks = await _bookmarkController.find();

    emit(state.copyWith(
        init: state.init.copyWith(bookmarks: bookmarks), reset: true));
  }

  Future reset() async {
    await _bookmarkController.clear();
    final bookmarks = await _bookmarkController.init(state.init.dzikirs);

    emit(state.copyWith(
        init: state.init.copyWith(bookmarks: bookmarks), reset: true));
  }
}
