part of 'bookmark_cubit.dart';

@freezed
class BookmarkState with _$BookmarkState {
  const factory BookmarkState({@Default(Bookmark()) Bookmark bookmark}) = _BookmarkState;
}
