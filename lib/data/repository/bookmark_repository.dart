import '../../model/bookmark/bookmark.dart';

abstract class BookmarkRepository {
  Future<List<Bookmark>?> find();
  Future<Bookmark?> show(String bookmarkId);
  Future<void> upsert(Bookmark bookmark);
}
