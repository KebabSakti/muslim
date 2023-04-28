part of 'dzikir_cubit.dart';

@freezed
class DzikirState with _$DzikirState {
  const factory DzikirState({
    @Default(false) bool loading,
    Dzikir? dzikir,
    Exception? exception,
  }) = _DzikirState;
}
