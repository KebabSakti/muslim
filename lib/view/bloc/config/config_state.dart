part of 'config_cubit.dart';

@freezed
class ConfigState with _$ConfigState {
  const factory ConfigState({@Default(Config()) Config config}) = _ConfigState;
}
