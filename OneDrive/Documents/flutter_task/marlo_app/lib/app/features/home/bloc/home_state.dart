part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    required bool checked,
  }) = _HomeState;
  factory HomeState.initial() => HomeState(checked: false);
}
