part of 'invite_bloc.dart';

@freezed
class InviteState with _$InviteState {
  factory InviteState({required String role}) = _InviteState;
  factory InviteState.initial() => InviteState(role: "Admin");
}
