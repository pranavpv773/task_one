import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:marlo_app/app/features/new_dashboard/infrastructure/balance_functions.dart';

import '../domain/balance_model.dart';

part 'balance_event.dart';
part 'balance_state.dart';
part 'balance_bloc.freezed.dart';

@injectable
class BalanceBloc extends Bloc<BalanceEvent, BalanceState> {
  BalanceFunctions balanceFunctions;
  BalanceBloc(this.balanceFunctions) : super(BalanceState.initial()) {
    on<Initialize>((event, emit) {
      return emit(
          state.copyWith(isLoading: true, balanceList: [], isError: false));
    });
    on<FetchBalance>((event, emit) async {
      log('Balance Bloc called');
      //  if (state.balanceList.isNotEmpty) {
      //    emit(state.copyWith(isLoading: false,balanceList: state.balanceList ));
      //    return;
      //  }
      emit(state.copyWith(
          isLoading: true, balanceList: state.balanceList, isError: false));
      List<Datum>? balanceNewList =
          await balanceFunctions.fetchBalanceDetails();
      if (balanceNewList == null) {
        return emit(
            state.copyWith(isLoading: false, balanceList: [], isError: true));
      }

      return emit(state.copyWith(
          isLoading: false, balanceList: balanceNewList, isError: false));
    });
  }
}
