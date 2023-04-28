// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dzikir_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DzikirState {
  bool get loading => throw _privateConstructorUsedError;
  Dzikir? get dzikir => throw _privateConstructorUsedError;
  Exception? get exception => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DzikirStateCopyWith<DzikirState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DzikirStateCopyWith<$Res> {
  factory $DzikirStateCopyWith(
          DzikirState value, $Res Function(DzikirState) then) =
      _$DzikirStateCopyWithImpl<$Res, DzikirState>;
  @useResult
  $Res call({bool loading, Dzikir? dzikir, Exception? exception});

  $DzikirCopyWith<$Res>? get dzikir;
}

/// @nodoc
class _$DzikirStateCopyWithImpl<$Res, $Val extends DzikirState>
    implements $DzikirStateCopyWith<$Res> {
  _$DzikirStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? dzikir = freezed,
    Object? exception = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      dzikir: freezed == dzikir
          ? _value.dzikir
          : dzikir // ignore: cast_nullable_to_non_nullable
              as Dzikir?,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DzikirCopyWith<$Res>? get dzikir {
    if (_value.dzikir == null) {
      return null;
    }

    return $DzikirCopyWith<$Res>(_value.dzikir!, (value) {
      return _then(_value.copyWith(dzikir: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DzikirStateCopyWith<$Res>
    implements $DzikirStateCopyWith<$Res> {
  factory _$$_DzikirStateCopyWith(
          _$_DzikirState value, $Res Function(_$_DzikirState) then) =
      __$$_DzikirStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, Dzikir? dzikir, Exception? exception});

  @override
  $DzikirCopyWith<$Res>? get dzikir;
}

/// @nodoc
class __$$_DzikirStateCopyWithImpl<$Res>
    extends _$DzikirStateCopyWithImpl<$Res, _$_DzikirState>
    implements _$$_DzikirStateCopyWith<$Res> {
  __$$_DzikirStateCopyWithImpl(
      _$_DzikirState _value, $Res Function(_$_DzikirState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? dzikir = freezed,
    Object? exception = freezed,
  }) {
    return _then(_$_DzikirState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      dzikir: freezed == dzikir
          ? _value.dzikir
          : dzikir // ignore: cast_nullable_to_non_nullable
              as Dzikir?,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$_DzikirState implements _DzikirState {
  const _$_DzikirState({this.loading = false, this.dzikir, this.exception});

  @override
  @JsonKey()
  final bool loading;
  @override
  final Dzikir? dzikir;
  @override
  final Exception? exception;

  @override
  String toString() {
    return 'DzikirState(loading: $loading, dzikir: $dzikir, exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DzikirState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.dzikir, dzikir) || other.dzikir == dzikir) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, dzikir, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DzikirStateCopyWith<_$_DzikirState> get copyWith =>
      __$$_DzikirStateCopyWithImpl<_$_DzikirState>(this, _$identity);
}

abstract class _DzikirState implements DzikirState {
  const factory _DzikirState(
      {final bool loading,
      final Dzikir? dzikir,
      final Exception? exception}) = _$_DzikirState;

  @override
  bool get loading;
  @override
  Dzikir? get dzikir;
  @override
  Exception? get exception;
  @override
  @JsonKey(ignore: true)
  _$$_DzikirStateCopyWith<_$_DzikirState> get copyWith =>
      throw _privateConstructorUsedError;
}
