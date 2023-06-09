part of 'counter_cubit.dart';

@freezed
class CounterState with _$CounterState {
  const factory CounterState(
      {required int count, @Default(false) bool loading}) = _CounterState;
}
