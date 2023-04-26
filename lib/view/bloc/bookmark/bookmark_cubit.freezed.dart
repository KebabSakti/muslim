// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmark_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookmarkState {
  Bookmark get bookmark => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookmarkStateCopyWith<BookmarkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkStateCopyWith<$Res> {
  factory $BookmarkStateCopyWith(
          BookmarkState value, $Res Function(BookmarkState) then) =
      _$BookmarkStateCopyWithImpl<$Res, BookmarkState>;
  @useResult
  $Res call({Bookmark bookmark});

  $BookmarkCopyWith<$Res> get bookmark;
}

/// @nodoc
class _$BookmarkStateCopyWithImpl<$Res, $Val extends BookmarkState>
    implements $BookmarkStateCopyWith<$Res> {
  _$BookmarkStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookmark = null,
  }) {
    return _then(_value.copyWith(
      bookmark: null == bookmark
          ? _value.bookmark
          : bookmark // ignore: cast_nullable_to_non_nullable
              as Bookmark,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookmarkCopyWith<$Res> get bookmark {
    return $BookmarkCopyWith<$Res>(_value.bookmark, (value) {
      return _then(_value.copyWith(bookmark: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BookmarkStateCopyWith<$Res>
    implements $BookmarkStateCopyWith<$Res> {
  factory _$$_BookmarkStateCopyWith(
          _$_BookmarkState value, $Res Function(_$_BookmarkState) then) =
      __$$_BookmarkStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Bookmark bookmark});

  @override
  $BookmarkCopyWith<$Res> get bookmark;
}

/// @nodoc
class __$$_BookmarkStateCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res, _$_BookmarkState>
    implements _$$_BookmarkStateCopyWith<$Res> {
  __$$_BookmarkStateCopyWithImpl(
      _$_BookmarkState _value, $Res Function(_$_BookmarkState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookmark = null,
  }) {
    return _then(_$_BookmarkState(
      bookmark: null == bookmark
          ? _value.bookmark
          : bookmark // ignore: cast_nullable_to_non_nullable
              as Bookmark,
    ));
  }
}

/// @nodoc

class _$_BookmarkState implements _BookmarkState {
  const _$_BookmarkState({this.bookmark = const Bookmark()});

  @override
  @JsonKey()
  final Bookmark bookmark;

  @override
  String toString() {
    return 'BookmarkState(bookmark: $bookmark)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookmarkState &&
            (identical(other.bookmark, bookmark) ||
                other.bookmark == bookmark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookmark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookmarkStateCopyWith<_$_BookmarkState> get copyWith =>
      __$$_BookmarkStateCopyWithImpl<_$_BookmarkState>(this, _$identity);
}

abstract class _BookmarkState implements BookmarkState {
  const factory _BookmarkState({final Bookmark bookmark}) = _$_BookmarkState;

  @override
  Bookmark get bookmark;
  @override
  @JsonKey(ignore: true)
  _$$_BookmarkStateCopyWith<_$_BookmarkState> get copyWith =>
      throw _privateConstructorUsedError;
}
