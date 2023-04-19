// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dzikir.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Dzikir _$DzikirFromJson(Map<String, dynamic> json) {
  return _Dzikir.fromJson(json);
}

/// @nodoc
mixin _$Dzikir {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<Surah>? get surah => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DzikirCopyWith<Dzikir> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DzikirCopyWith<$Res> {
  factory $DzikirCopyWith(Dzikir value, $Res Function(Dzikir) then) =
      _$DzikirCopyWithImpl<$Res, Dzikir>;
  @useResult
  $Res call({String? id, String? name, List<Surah>? surah});
}

/// @nodoc
class _$DzikirCopyWithImpl<$Res, $Val extends Dzikir>
    implements $DzikirCopyWith<$Res> {
  _$DzikirCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? surah = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surah: freezed == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as List<Surah>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DzikirCopyWith<$Res> implements $DzikirCopyWith<$Res> {
  factory _$$_DzikirCopyWith(_$_Dzikir value, $Res Function(_$_Dzikir) then) =
      __$$_DzikirCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, List<Surah>? surah});
}

/// @nodoc
class __$$_DzikirCopyWithImpl<$Res>
    extends _$DzikirCopyWithImpl<$Res, _$_Dzikir>
    implements _$$_DzikirCopyWith<$Res> {
  __$$_DzikirCopyWithImpl(_$_Dzikir _value, $Res Function(_$_Dzikir) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? surah = freezed,
  }) {
    return _then(_$_Dzikir(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surah: freezed == surah
          ? _value._surah
          : surah // ignore: cast_nullable_to_non_nullable
              as List<Surah>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Dzikir implements _Dzikir {
  const _$_Dzikir({this.id, this.name, final List<Surah>? surah})
      : _surah = surah;

  factory _$_Dzikir.fromJson(Map<String, dynamic> json) =>
      _$$_DzikirFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  final List<Surah>? _surah;
  @override
  List<Surah>? get surah {
    final value = _surah;
    if (value == null) return null;
    if (_surah is EqualUnmodifiableListView) return _surah;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Dzikir(id: $id, name: $name, surah: $surah)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Dzikir &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._surah, _surah));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_surah));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DzikirCopyWith<_$_Dzikir> get copyWith =>
      __$$_DzikirCopyWithImpl<_$_Dzikir>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DzikirToJson(
      this,
    );
  }
}

abstract class _Dzikir implements Dzikir {
  const factory _Dzikir(
      {final String? id,
      final String? name,
      final List<Surah>? surah}) = _$_Dzikir;

  factory _Dzikir.fromJson(Map<String, dynamic> json) = _$_Dzikir.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  List<Surah>? get surah;
  @override
  @JsonKey(ignore: true)
  _$$_DzikirCopyWith<_$_Dzikir> get copyWith =>
      throw _privateConstructorUsedError;
}
