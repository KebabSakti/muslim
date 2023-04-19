import 'package:freezed_annotation/freezed_annotation.dart';

import '../surah/surah.dart';

part 'dzikir.freezed.dart';
part 'dzikir.g.dart';

@freezed
class Dzikir with _$Dzikir {
  const factory Dzikir({
    String? id,
    String? name,
    List<Surah>? surah,
  }) = _Dzikir;

  factory Dzikir.fromJson(Map<String, dynamic> json) => _$DzikirFromJson(json);
}
