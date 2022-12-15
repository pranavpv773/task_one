import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marlo_app/app/features/contract/domain/team_model.dart';
part 'contract_bloc_event.dart';
part 'contract_bloc_state.dart';
part 'contract_bloc_bloc.freezed.dart';

class ContractBlocBloc extends Bloc<ContractBlocEvent, ContractBlocState> {
  ContractBlocBloc() : super(ContractBlocState.initial()) {
    on<ContractBlocEvent>((event, emit) {});
  }
}
