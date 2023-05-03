import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_cubit.freezed.dart';
part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit(int count) : super(CounterState(count: count));

  void increment() {
    if (state.count <= 9999) {
      emit(CounterState(count: state.count + 1));
    }
  }

  void decrement() {
    if (state.count > 0) {
      emit(CounterState(count: state.count - 1));
    }
  }

  void setCount(int count) {
    emit(state.copyWith(loading: true));
    emit(CounterState(count: count));
  }

  void reset() {
    emit(const CounterState(count: 0));
  }
}
