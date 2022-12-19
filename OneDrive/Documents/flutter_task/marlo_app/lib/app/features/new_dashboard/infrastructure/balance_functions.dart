import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:marlo_app/app/features/new_dashboard/domain/balance_model.dart';
import 'package:marlo_app/app/features/new_dashboard/domain/services/balance_api_services.dart';
import 'package:marlo_app/app/utils/api_endpoints.dart';

@injectable
class BalanceFunctions implements BalanceApiServices {
  @override
  Future<List<Datum>> fetchBalanceDetails() async {
    try {
      final dio = Dio();
      dio.options.headers["authtoken"] = ApiEndPoints.token;

      final Response response = await dio.get(ApiEndPoints.balanceUrl);
      // log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = BalanceModel.fromJson(response.data);
        return result.datas;
      } else {
        log(
          '===================================== SomeThing Wrong ====== BalanceService==================',
        );
        return [];
      }
    } on DioError catch (e) {
      log(
        '===================================== Dio Error ====== BalanceService==================',
      );
      log(e.toString());
      return [];
    } catch (e) {
      log(
        '===================================== catch Error ====== BalanceService==================',
      );
      log(e.toString());
      return [];
    }
  }
}
