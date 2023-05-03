import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/helper/utility.dart';
import '../../model/bookmark/bookmark.dart';
import '../../model/item/item.dart';
import '../repository/bookmark_repository.dart';

class BookmarkLocal implements BookmarkRepository {
  @override
  Future<List<Bookmark>> find() async {
    List<Bookmark> results = [];

    final storage = await SharedPreferences.getInstance();
    final jsonString = storage.getString('bookmark');

    if (jsonString != null) {
      final parsed = await compute(parseJson, jsonString);
      results = List<Bookmark>.from(parsed.map((e) => Bookmark.fromJson(e)));
    }

    return results;
  }

  @override
  Future<void> upsert(Bookmark bookmark) async {
    List<Bookmark> updatedBookmarks = [];

    final storage = await SharedPreferences.getInstance();
    final bookmarks = await find();

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
    } else {
      updatedBookmarks = [...bookmarks, bookmark];
    }

    await storage.setString('bookmark', jsonEncode(updatedBookmarks));
  }

  @override
  Future<void> delete(String bookmarkId) async {
    final storage = await SharedPreferences.getInstance();
    final bookmarks = await find();
    final updatedBookmarks = List<Bookmark>.from(bookmarks.map((e) {
      if (e.id == bookmarkId) {
        final items = List<Item>.from(e.item!.map((e) {
          return e.copyWith(count: 0);
        }));

        return e.copyWith(
          mark: e.item!.first.id,
          item: items,
        );
      }

      return e;
    }));

    await storage.setString('bookmark', jsonEncode(updatedBookmarks));
  }

  @override
  Future<void> clear() async {
    final storage = await SharedPreferences.getInstance();
    await storage.remove('bookmark');
  }
}
