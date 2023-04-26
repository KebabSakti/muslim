// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'init.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Init _$$_InitFromJson(Map<String, dynamic> json) => _$_Init(
      config: Config.fromJson(json['config'] as Map<String, dynamic>),
      dzikirs: (json['dzikirs'] as List<dynamic>)
          .map((e) => Dzikir.fromJson(e as Map<String, dynamic>))
          .toList(),
      bookmarks: (json['bookmarks'] as List<dynamic>)
          .map((e) => Bookmark.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_InitToJson(_$_Init instance) => <String, dynamic>{
      'config': instance.config,
      'dzikirs': instance.dzikirs,
      'bookmarks': instance.bookmarks,
    };
