import '../data/repository/bookmark_repository.dart';
import '../model/bookmark/bookmark.dart';
import '../model/dzikir/dzikir.dart';
import '../model/item/item.dart';

class BookmarkController {
  final BookmarkRepository _bookmarkRepository;

  BookmarkController(this._bookmarkRepository);

  Future<void> init(List<Dzikir> dzikirs) async {
    await Future.wait(dzikirs.map((e) async {
      final firstSurah = e.surah!.first;

      final items =
          List<Item>.from(e.surah!.map((e) => Item(id: e.id, count: 0)));

      final bookmark = Bookmark(
        id: e.id,
        mark: firstSurah.id,
        item: items,
      );

      await _bookmarkRepository.upsert(bookmark);
    }));
  }

  Future<Bookmark?> show(String bookmarkId) async {
    final results = await _bookmarkRepository.show(bookmarkId);

    return results;
  }

  Future<void> upsert(Bookmark bookmark) async {
    await _bookmarkRepository.upsert(bookmark);
  }
}
