import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/helper/utility.dart';
import '../../model/bookmark/bookmark.dart';
import '../repository/bookmark_repository.dart';

class BookmarkLocal implements BookmarkRepository {
  @override
  Future<List<Bookmark>?> find() async {
    List<Bookmark>? results;

    final storage = await SharedPreferences.getInstance();
    final jsonString = storage.getString('bookmark');

    if (jsonString != null) {
      final parsed = await compute(parseJson, jsonString);
      results = List<Bookmark>.from(parsed.map((e) => Bookmark.fromJson(e)));
    }

    return results;
  }

  @override
  Future<Bookmark?> show(String bookmarkId) async {
    Bookmark? results;
    final bookmarks = await find();

    if (bookmarks != null) {
      results = bookmarks.firstWhere((element) => element.id == bookmarkId);
    }

    return results;
  }

  @override
  Future<void> upsert(Bookmark bookmark) async {
    List<Bookmark> updatedBookmarks = [];
    final bookmarks = await find();

    if (bookmarks != null) {
      final bookmarked = bookmarks.firstWhere(
        (element) => element.id == bookmark.id,
        orElse: () => const Bookmark(),
      );

      if (bookmarked.id != null) {
        updatedBookmarks = List<Bookmark>.from(bookmarks.map((e) {
          if (e.id == bookmark.id) {
            return bookmark;
          }

          return e;
        }));
      }
    } else {
      updatedBookmarks = [...updatedBookmarks, bookmark];
    }
  }
}
