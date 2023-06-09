import 'package:freezed_annotation/freezed_annotation.dart';
import '../bookmark/bookmark.dart';
import '../config/config.dart';

import '../dzikir/dzikir.dart';

part 'init.freezed.dart';
part 'init.g.dart';

@freezed
class Init with _$Init {
  const factory Init({
    required Config config,
    required List<Dzikir> dzikirs,
    required List<Bookmark> bookmarks,
  }) = _Init;

  factory Init.fromJson(Map<String, dynamic> json) => _$InitFromJson(json);
}
