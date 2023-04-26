import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muslim/controller/bookmark_controller.dart';
import 'package:muslim/model/bookmark/bookmark.dart';

import '../../../model/dzikir/dzikir.dart';

part 'bookmark_state.dart';
part 'bookmark_cubit.freezed.dart';

class BookmarkCubit extends Cubit<BookmarkState> {
  BookmarkCubit() : super(const BookmarkState());

  final _bookmarkController = BookmarkController();

  Future load(String bookmarkId, List<Dzikir> dzikirs) async {
    final _bookmarks = await _bookmarkController.init(dzikirs);
  }

  Future save(Bookmark bookmark) async {}
}
