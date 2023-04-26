part of 'init_cubit.dart';

@freezed
class InitState with _$InitState {
  const factory InitState({
    @Default(Init(config: Config(), dzikirs: [], bookmarks: [])) Init init,
  }) = _InitState;
}
