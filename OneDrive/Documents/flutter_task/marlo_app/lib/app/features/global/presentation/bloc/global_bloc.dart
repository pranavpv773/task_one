import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marlo_app/app/features/chart/presentation/chart.dart';
import 'package:marlo_app/app/features/contract/presentation/screen_one/screen_one.dart';
import 'package:marlo_app/app/features/home/bloc/home_bloc.dart';
import 'package:marlo_app/app/features/home/presentation/home.dart';
import 'package:marlo_app/app/features/loan/loan_screen.dart';

part 'global_event.dart';
part 'global_state.dart';
part 'global_bloc.freezed.dart';

class GlobalBloc extends Bloc<GlobalEvent, GlobalState> {
  GlobalBloc() : super(GlobalState.initial()) {
    on<ChangeIndex>((event, emit) {
      emit(state.copyWith(currentIndex: event.index));
    });
  }
}
