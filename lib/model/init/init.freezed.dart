// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'init.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Init _$InitFromJson(Map<String, dynamic> json) {
  return _Init.fromJson(json);
}

/// @nodoc
mixin _$Init {
  Config get config => throw _privateConstructorUsedError;
  List<Dzikir> get dzikirs => throw _privateConstructorUsedError;
  List<Bookmark> get bookmarks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitCopyWith<Init> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res, Init>;
  @useResult
  $Res call({Config config, List<Dzikir> dzikirs, List<Bookmark> bookmarks});

  $ConfigCopyWith<$Res> get config;
}

/// @nodoc
class _$InitCopyWithImpl<$Res, $Val extends Init>
    implements $InitCopyWith<$Res> {
  _$InitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? config = null,
    Object? dzikirs = null,
    Object? bookmarks = null,
  }) {
    return _then(_value.copyWith(
      config: null == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as Config,
      dzikirs: null == dzikirs
          ? _value.dzikirs
          : dzikirs // ignore: cast_nullable_to_non_nullable
              as List<Dzikir>,
      bookmarks: null == bookmarks
          ? _value.bookmarks
          : bookmarks // ignore: cast_nullable_to_non_nullable
              as List<Bookmark>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConfigCopyWith<$Res> get config {
    return $ConfigCopyWith<$Res>(_value.config, (value) {
      return _then(_value.copyWith(config: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitCopyWith<$Res> implements $InitCopyWith<$Res> {
  factory _$$_InitCopyWith(_$_Init value, $Res Function(_$_Init) then) =
      __$$_InitCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Config config, List<Dzikir> dzikirs, List<Bookmark> bookmarks});

  @override
  $ConfigCopyWith<$Res> get config;
}

/// @nodoc
class __$$_InitCopyWithImpl<$Res> extends _$InitCopyWithImpl<$Res, _$_Init>
    implements _$$_InitCopyWith<$Res> {
  __$$_InitCopyWithImpl(_$_Init _value, $Res Function(_$_Init) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? config = null,
    Object? dzikirs = null,
    Object? bookmarks = null,
  }) {
    return _then(_$_Init(
      config: null == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as Config,
      dzikirs: null == dzikirs
          ? _value._dzikirs
          : dzikirs // ignore: cast_nullable_to_non_nullable
              as List<Dzikir>,
      bookmarks: null == bookmarks
          ? _value._bookmarks
          : bookmarks // ignore: cast_nullable_to_non_nullable
              as List<Bookmark>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Init implements _Init {
  const _$_Init(
      {required this.config,
      required final List<Dzikir> dzikirs,
      required final List<Bookmark> bookmarks})
      : _dzikirs = dzikirs,
        _bookmarks = bookmarks;

  factory _$_Init.fromJson(Map<String, dynamic> json) => _$$_InitFromJson(json);

  @override
  final Config config;
  final List<Dzikir> _dzikirs;
  @override
  List<Dzikir> get dzikirs {
    if (_dzikirs is EqualUnmodifiableListView) return _dzikirs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dzikirs);
  }

  final List<Bookmark> _bookmarks;
  @override
  List<Bookmark> get bookmarks {
    if (_bookmarks is EqualUnmodifiableListView) return _bookmarks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookmarks);
  }

  @override
  String toString() {
    return 'Init(config: $config, dzikirs: $dzikirs, bookmarks: $bookmarks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Init &&
            (identical(other.config, config) || other.config == config) &&
            const DeepCollectionEquality().equals(other._dzikirs, _dzikirs) &&
            const DeepCollectionEquality()
                .equals(other._bookmarks, _bookmarks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      config,
      const DeepCollectionEquality().hash(_dzikirs),
      const DeepCollectionEquality().hash(_bookmarks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitCopyWith<_$_Init> get copyWith =>
      __$$_InitCopyWithImpl<_$_Init>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InitToJson(
      this,
    );
  }
}

abstract class _Init implements Init {
  const factory _Init(
      {required final Config config,
      required final List<Dzikir> dzikirs,
      required final List<Bookmark> bookmarks}) = _$_Init;

  factory _Init.fromJson(Map<String, dynamic> json) = _$_Init.fromJson;

  @override
  Config get config;
  @override
  List<Dzikir> get dzikirs;
  @override
  List<Bookmark> get bookmarks;
  @override
  @JsonKey(ignore: true)
  _$$_InitCopyWith<_$_Init> get copyWith => throw _privateConstructorUsedError;
}
