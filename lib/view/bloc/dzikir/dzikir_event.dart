part of 'dzikir_bloc.dart';

@freezed
class DzikirEvent with _$DzikirEvent {
  const factory DzikirEvent.loaded(String dzikirId, List<Dzikir> dzikirs) = _Loaded;
}