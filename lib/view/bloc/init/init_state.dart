part of 'init_cubit.dart';

@freezed
class InitState with _$InitState {
  const factory InitState({
    @Default(Init(config: Config(), dzikirs: [], bookmarks: [])) Init init,
    @Default(false) bool loading,
    @Default(false) bool reset,
  }) = _InitState;
}
