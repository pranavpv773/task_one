// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/contract/infrastructure/contract_functions.dart' as _i5;
import '../../features/contract/presentation/screen_one/bloc/contract_bloc_bloc.dart'
    as _i4;
import '../../features/new_dashboard/bloc/balance_bloc.dart' as _i6;
import '../../features/new_dashboard/infrastructure/balance_functions.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.BalanceFunctions>(() => _i3.BalanceFunctions());
  gh.factory<_i4.ContractBloc>(() => _i4.ContractBloc());
  gh.factory<_i5.ContractFunctions>(() => _i5.ContractFunctions());
  gh.factory<_i6.BalanceBloc>(
      () => _i6.BalanceBloc(get<_i3.BalanceFunctions>()));
  return get;
}
