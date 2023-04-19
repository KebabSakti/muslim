part of 'dzikir_bloc.dart';

@freezed
class DzikirState with _$DzikirState {
  const factory DzikirState.initial() = _Initial;

  const factory DzikirState.loading() = _Loading;

  const factory DzikirState.load({required Dzikir dzikir}) = _Load;

  const factory DzikirState.error({required String message}) = _Error;
}
