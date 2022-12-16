import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marlo_app/app/features/contract/infrastructure/screen_two_functions.dart';

part 'invite_event.dart';
part 'invite_state.dart';
part 'invite_bloc.freezed.dart';

class InviteBloc extends Bloc<InviteEvent, InviteState> {
  InviteBloc() : super(InviteState.initial()) {
    on<ChangeRole>((event, emit) {
      log("-------------------reached--------------------------");
      emit(state.copyWith(role: InviteFuctions.roles[event.index]));
    });
  }
}
