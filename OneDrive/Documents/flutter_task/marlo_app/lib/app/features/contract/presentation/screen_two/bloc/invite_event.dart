part of 'invite_bloc.dart';

@freezed
class InviteEvent with _$InviteEvent {
  const factory InviteEvent.changeRole(int index) = ChangeRole;
}
