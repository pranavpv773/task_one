part of 'balance_bloc.dart';

@freezed
class BalanceState with _$BalanceState {
  const factory BalanceState({
    required List<Datum> balanceList,
    required bool isLoading,
    required bool isError,
  }) = _BalanceState;
  factory BalanceState.initial() =>
      const BalanceState(balanceList: [], isLoading: true, isError: false);
}
