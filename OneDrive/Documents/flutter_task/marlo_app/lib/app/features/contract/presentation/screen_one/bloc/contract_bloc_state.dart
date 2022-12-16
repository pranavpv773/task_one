part of 'contract_bloc_bloc.dart';

@freezed
class ContractState with _$ContractState {
  const factory ContractState({
    required List<TeamModel> teamModel,
    required bool isLoading,
    required bool isError,
  }) = _ContractState;
  factory ContractState.initial() =>
      const ContractState(teamModel: [], isLoading: false, isError: false);
}
