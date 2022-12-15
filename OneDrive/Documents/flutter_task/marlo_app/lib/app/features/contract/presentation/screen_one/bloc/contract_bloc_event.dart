part of 'contract_bloc_bloc.dart';

@freezed
class ContractBlocEvent with _$ContractBlocEvent {
  const factory ContractBlocEvent.fetchTeamFn() = _fetchTeamFn;
}
