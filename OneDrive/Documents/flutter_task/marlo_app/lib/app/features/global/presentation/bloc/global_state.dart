part of 'global_bloc.dart';

@freezed
class GlobalState with _$GlobalState {
  factory GlobalState({
    required int currentIndex,
  }) = _GlobalState;
  factory GlobalState.initial() => GlobalState(currentIndex: 2);
}
