import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:marlo_app/app/features/contract/domain/services/api_services.dart';
import 'package:injectable/injectable.dart';
import 'package:marlo_app/app/features/contract/domain/team_model.dart';
import 'package:marlo_app/app/utils/api_endpoints.dart';

@injectable
class ContractFunctions implements TeamModelService {
  Future fetchArticleList({required String query}) async {
    log("clicked");
    try {
      Response response = await Dio(BaseOptions()).get(ApiEndPoints.inviteUrl);
      // log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = TeamModel.fromJson(response.data);
        return result;
      } else {
        log('===================================== SomeThing Wrong ====== ArticleService==================');
        return [];
      }
    } on DioError catch (e) {
      log('===================================== Dio Error ====== ArticleService==================');
      log(e.toString());
      return [];
    } catch (e) {
      log('===================================== catch Error ====== ArticleService==================');
      log(e.toString());
      return [];
    }
  }

  @override
  Future<List<TeamModel>?> fetchApiList({required String query}) {
    throw UnimplementedError();
  }
}
