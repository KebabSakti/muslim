// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'init_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InitState {
  Init get init => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InitStateCopyWith<InitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitStateCopyWith<$Res> {
  factory $InitStateCopyWith(InitState value, $Res Function(InitState) then) =
      _$InitStateCopyWithImpl<$Res, InitState>;
  @useResult
  $Res call({Init init});

  $InitCopyWith<$Res> get init;
}

/// @nodoc
class _$InitStateCopyWithImpl<$Res, $Val extends InitState>
    implements $InitStateCopyWith<$Res> {
  _$InitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? init = null,
  }) {
    return _then(_value.copyWith(
      init: null == init
          ? _value.init
          : init // ignore: cast_nullable_to_non_nullable
              as Init,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InitCopyWith<$Res> get init {
    return $InitCopyWith<$Res>(_value.init, (value) {
      return _then(_value.copyWith(init: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitStateCopyWith<$Res> implements $InitStateCopyWith<$Res> {
  factory _$$_InitStateCopyWith(
          _$_InitState value, $Res Function(_$_InitState) then) =
      __$$_InitStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Init init});

  @override
  $InitCopyWith<$Res> get init;
}

/// @nodoc
class __$$_InitStateCopyWithImpl<$Res>
    extends _$InitStateCopyWithImpl<$Res, _$_InitState>
    implements _$$_InitStateCopyWith<$Res> {
  __$$_InitStateCopyWithImpl(
      _$_InitState _value, $Res Function(_$_InitState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? init = null,
  }) {
    return _then(_$_InitState(
      init: null == init
          ? _value.init
          : init // ignore: cast_nullable_to_non_nullable
              as Init,
    ));
  }
}

/// @nodoc

class _$_InitState implements _InitState {
  const _$_InitState(
      {this.init = const Init(config: Config(), dzikirs: [], bookmarks: [])});

  @override
  @JsonKey()
  final Init init;

  @override
  String toString() {
    return 'InitState(init: $init)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitState &&
            (identical(other.init, init) || other.init == init));
  }

  @override
  int get hashCode => Object.hash(runtimeType, init);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitStateCopyWith<_$_InitState> get copyWith =>
      __$$_InitStateCopyWithImpl<_$_InitState>(this, _$identity);
}

abstract class _InitState implements InitState {
  const factory _InitState({final Init init}) = _$_InitState;

  @override
  Init get init;
  @override
  @JsonKey(ignore: true)
  _$$_InitStateCopyWith<_$_InitState> get copyWith =>
      throw _privateConstructorUsedError;
}
