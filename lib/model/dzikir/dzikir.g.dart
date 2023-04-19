// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dzikir.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Dzikir _$$_DzikirFromJson(Map<String, dynamic> json) => _$_Dzikir(
      id: json['id'] as String?,
      name: json['name'] as String?,
      surah: (json['surah'] as List<dynamic>?)
          ?.map((e) => Surah.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DzikirToJson(_$_Dzikir instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'surah': instance.surah,
    };
