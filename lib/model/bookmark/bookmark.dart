import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muslim/model/item/item.dart';

part 'bookmark.freezed.dart';
part 'bookmark.g.dart';

@freezed
class Bookmark with _$Bookmark {
  const factory Bookmark({
    String? id,
    String? mark,
    List<Item>? item,
  }) = _Bookmark;

  factory Bookmark.fromJson(Map<String, dynamic> json) =>
      _$BookmarkFromJson(json);
}
