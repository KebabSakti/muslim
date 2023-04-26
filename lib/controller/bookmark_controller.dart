import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/helper/failure.dart';
import '../core/helper/utility.dart';
import '../model/bookmark/bookmark.dart';
import '../model/dzikir/dzikir.dart';
import '../model/item/item.dart';

class BookmarkController {
  Future<List<Bookmark>> init(List<Dzikir> dzikirs) async {
    final storage = await SharedPreferences.getInstance();
    final jsonString = storage.getString('bookmark');

    if (jsonString == null) {
      final bookmarks = List<Bookmark>.from(dzikirs.map(
        (e) {
          final firstSurah = e.surah!.first;

          return Bookmark(
            id: e.id,
            mark: firstSurah.id,
            item:
                List<Item>.from(e.surah!.map((e) => Item(id: e.id, count: 0))),
          );
        },
      ));

      await save(bookmarks);
    }

    final updatedBookmarks = await load();

    return updatedBookmarks;
  }

  Future<List<Bookmark>> load() async {
    final storage = await SharedPreferences.getInstance();
    final jsonString = storage.getString('bookmark');

    if (jsonString == null) {
      throw InternalFailure();
    }

    final parsed = await compute(parseJson, jsonString);
    final results =
        List<Bookmark>.from(parsed.map((e) => Bookmark.fromJson(e)));

    return results;
  }

  Future save(List<Bookmark> bookmarks) async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString('bookmark', jsonEncode(bookmarks));
  }

  Bookmark bookmark(String bookmarkId, List<Bookmark> bookmarks) {
    final results = bookmarks.firstWhere((element) => element.id == bookmarkId);

    return results;
  }

  Item item(String itemId, Bookmark bookmark) {
    final results =
        bookmark.item!.firstWhere((element) => element.id == itemId);

    return results;
  }

  Future update(Item item, Bookmark bookmark, List<Bookmark> bookmarks) async {
    final itemIndex =
        bookmark.item!.indexWhere((element) => element.id == item.id);
    final bookmarksIndex =
        bookmarks.indexWhere((element) => element.id == bookmark.id);

    bookmark.item![itemIndex] = item;
    bookmarks[bookmarksIndex] = bookmark;

    await save(bookmarks);
  }
}
