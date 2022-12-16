import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:marlo_app/app/features/contract/domain/team_model.dart';
part 'contract_bloc_event.dart';
part 'contract_bloc_state.dart';
part 'contract_bloc_bloc.freezed.dart';

@injectable
class ContractBloc extends Bloc<ContractEvent, ContractState> {
  ContractBloc() : super(ContractState.initial()) {
    on<Initialize>((event, emit) {
      return emit(
          state.copyWith(isLoading: true, teamModel: [], isError: false));
    });
  }
}
