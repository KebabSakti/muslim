// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Surah _$SurahFromJson(Map<String, dynamic> json) {
  return _Surah.fromJson(json);
}

/// @nodoc
mixin _$Surah {
  String? get id => throw _privateConstructorUsedError;
  int? get number => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get arabic => throw _privateConstructorUsedError;
  String? get latin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurahCopyWith<Surah> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahCopyWith<$Res> {
  factory $SurahCopyWith(Surah value, $Res Function(Surah) then) =
      _$SurahCopyWithImpl<$Res, Surah>;
  @useResult
  $Res call(
      {String? id,
      int? number,
      int? count,
      String? name,
      String? arabic,
      String? latin});
}

/// @nodoc
class _$SurahCopyWithImpl<$Res, $Val extends Surah>
    implements $SurahCopyWith<$Res> {
  _$SurahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? number = freezed,
    Object? count = freezed,
    Object? name = freezed,
    Object? arabic = freezed,
    Object? latin = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      arabic: freezed == arabic
          ? _value.arabic
          : arabic // ignore: cast_nullable_to_non_nullable
              as String?,
      latin: freezed == latin
          ? _value.latin
          : latin // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SurahCopyWith<$Res> implements $SurahCopyWith<$Res> {
  factory _$$_SurahCopyWith(_$_Surah value, $Res Function(_$_Surah) then) =
      __$$_SurahCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      int? number,
      int? count,
      String? name,
      String? arabic,
      String? latin});
}

/// @nodoc
class __$$_SurahCopyWithImpl<$Res> extends _$SurahCopyWithImpl<$Res, _$_Surah>
    implements _$$_SurahCopyWith<$Res> {
  __$$_SurahCopyWithImpl(_$_Surah _value, $Res Function(_$_Surah) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? number = freezed,
    Object? count = freezed,
    Object? name = freezed,
    Object? arabic = freezed,
    Object? latin = freezed,
  }) {
    return _then(_$_Surah(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      arabic: freezed == arabic
          ? _value.arabic
          : arabic // ignore: cast_nullable_to_non_nullable
              as String?,
      latin: freezed == latin
          ? _value.latin
          : latin // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Surah implements _Surah {
  const _$_Surah(
      {this.id, this.number, this.count, this.name, this.arabic, this.latin});

  factory _$_Surah.fromJson(Map<String, dynamic> json) =>
      _$$_SurahFromJson(json);

  @override
  final String? id;
  @override
  final int? number;
  @override
  final int? count;
  @override
  final String? name;
  @override
  final String? arabic;
  @override
  final String? latin;

  @override
  String toString() {
    return 'Surah(id: $id, number: $number, count: $count, name: $name, arabic: $arabic, latin: $latin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Surah &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.arabic, arabic) || other.arabic == arabic) &&
            (identical(other.latin, latin) || other.latin == latin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, number, count, name, arabic, latin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SurahCopyWith<_$_Surah> get copyWith =>
      __$$_SurahCopyWithImpl<_$_Surah>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SurahToJson(
      this,
    );
  }
}

abstract class _Surah implements Surah {
  const factory _Surah(
      {final String? id,
      final int? number,
      final int? count,
      final String? name,
      final String? arabic,
      final String? latin}) = _$_Surah;

  factory _Surah.fromJson(Map<String, dynamic> json) = _$_Surah.fromJson;

  @override
  String? get id;
  @override
  int? get number;
  @override
  int? get count;
  @override
  String? get name;
  @override
  String? get arabic;
  @override
  String? get latin;
  @override
  @JsonKey(ignore: true)
  _$$_SurahCopyWith<_$_Surah> get copyWith =>
      throw _privateConstructorUsedError;
}
