import '../data/repository/bookmark_repository.dart';
import '../model/bookmark/bookmark.dart';
import '../model/dzikir/dzikir.dart';
import '../model/item/item.dart';

class BookmarkController {
  final BookmarkRepository _bookmarkRepository;

  BookmarkController(this._bookmarkRepository);

  Future<List<Bookmark>> init(List<Dzikir> dzikirs) async {
    final results = await Future.wait(dzikirs.map((e) async {
      final firstSurah = e.surah!.first;

      final items =
          List<Item>.from(e.surah!.map((e) => Item(id: e.id, count: 0)));

      final bookmark = Bookmark(
        id: e.id,
        mark: firstSurah.id,
        item: items,
      );

      await _bookmarkRepository.upsert(bookmark);

      return bookmark;
    }));

    return results;
  }

  Future<List<Bookmark>> find() async {
    final results = await _bookmarkRepository.find();

    return results;
  }

  Future<void> upsert(Bookmark bookmark) async {
    await _bookmarkRepository.upsert(bookmark);
  }

  Bookmark bookmark(String bookmarkId, List<Bookmark> bookmarks) {
    final results = bookmarks.firstWhere((element) => element.id == bookmarkId);

    return results;
  }

  Item item(String itemId, List<Item> items) {
    final results = items.firstWhere((element) => element.id == itemId);

    return results;
  }
}
