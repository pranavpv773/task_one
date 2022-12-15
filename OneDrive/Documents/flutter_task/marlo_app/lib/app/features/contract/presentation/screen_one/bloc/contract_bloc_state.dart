part of 'contract_bloc_bloc.dart';

@freezed
class ContractBlocState with _$ContractBlocState {
  factory ContractBlocState({
    required List<TeamModel> teamModel,
    required bool isLoading,
  }) = _ContractBlocState;

  factory ContractBlocState.initial() =>
      ContractBlocState(teamModel: [], isLoading: false);
}
