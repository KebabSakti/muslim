import '../../model/bookmark/bookmark.dart';

abstract class BookmarkRepository {
  Future<List<Bookmark>> find();
  Future<void> upsert(Bookmark bookmark);
}
