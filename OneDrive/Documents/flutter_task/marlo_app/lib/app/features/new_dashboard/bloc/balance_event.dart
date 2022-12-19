part of 'balance_bloc.dart';

@freezed
class BalanceEvent with _$BalanceEvent {
  const factory BalanceEvent.initialize() = Initialize;
  const factory BalanceEvent.fetchBalance() = FetchBalance;
}
