part of 'contract_bloc_bloc.dart';

@freezed
class ContractEvent with _$ContractEvent {
  const factory ContractEvent.initialize() = Initialize;
  const factory ContractEvent.searchContract({
    required String query,
  }) = SearchContract;
}
