import 'package:marlo_app/app/features/new_dashboard/domain/balance_model.dart';

abstract class BalanceApiServices {
  Future<List<Datum>> fetchBalanceDetails();
}
