// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dzikirs_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DzikirsState {
  List<Dzikir> get dzikirs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DzikirsStateCopyWith<DzikirsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DzikirsStateCopyWith<$Res> {
  factory $DzikirsStateCopyWith(
          DzikirsState value, $Res Function(DzikirsState) then) =
      _$DzikirsStateCopyWithImpl<$Res, DzikirsState>;
  @useResult
  $Res call({List<Dzikir> dzikirs});
}

/// @nodoc
class _$DzikirsStateCopyWithImpl<$Res, $Val extends DzikirsState>
    implements $DzikirsStateCopyWith<$Res> {
  _$DzikirsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dzikirs = null,
  }) {
    return _then(_value.copyWith(
      dzikirs: null == dzikirs
          ? _value.dzikirs
          : dzikirs // ignore: cast_nullable_to_non_nullable
              as List<Dzikir>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DzikirStateCopyWith<$Res>
    implements $DzikirsStateCopyWith<$Res> {
  factory _$$_DzikirStateCopyWith(
          _$_DzikirState value, $Res Function(_$_DzikirState) then) =
      __$$_DzikirStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Dzikir> dzikirs});
}

/// @nodoc
class __$$_DzikirStateCopyWithImpl<$Res>
    extends _$DzikirsStateCopyWithImpl<$Res, _$_DzikirState>
    implements _$$_DzikirStateCopyWith<$Res> {
  __$$_DzikirStateCopyWithImpl(
      _$_DzikirState _value, $Res Function(_$_DzikirState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dzikirs = null,
  }) {
    return _then(_$_DzikirState(
      dzikirs: null == dzikirs
          ? _value._dzikirs
          : dzikirs // ignore: cast_nullable_to_non_nullable
              as List<Dzikir>,
    ));
  }
}

/// @nodoc

class _$_DzikirState implements _DzikirState {
  const _$_DzikirState({final List<Dzikir> dzikirs = const []})
      : _dzikirs = dzikirs;

  final List<Dzikir> _dzikirs;
  @override
  @JsonKey()
  List<Dzikir> get dzikirs {
    if (_dzikirs is EqualUnmodifiableListView) return _dzikirs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dzikirs);
  }

  @override
  String toString() {
    return 'DzikirsState(dzikirs: $dzikirs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DzikirState &&
            const DeepCollectionEquality().equals(other._dzikirs, _dzikirs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_dzikirs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DzikirStateCopyWith<_$_DzikirState> get copyWith =>
      __$$_DzikirStateCopyWithImpl<_$_DzikirState>(this, _$identity);
}

abstract class _DzikirState implements DzikirsState {
  const factory _DzikirState({final List<Dzikir> dzikirs}) = _$_DzikirState;

  @override
  List<Dzikir> get dzikirs;
  @override
  @JsonKey(ignore: true)
  _$$_DzikirStateCopyWith<_$_DzikirState> get copyWith =>
      throw _privateConstructorUsedError;
}
