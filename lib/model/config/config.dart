import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'config.freezed.dart';
part 'config.g.dart';

@freezed
class Config with _$Config {
  const factory Config({
    @Default(ThemeMode.light) ThemeMode theme,
    @Default('arabic') String lang,
    @Default(1) int zoom,
  }) = _Config;

  factory Config.fromJson(Map<String, dynamic> json) => _$ConfigFromJson(json);
}
