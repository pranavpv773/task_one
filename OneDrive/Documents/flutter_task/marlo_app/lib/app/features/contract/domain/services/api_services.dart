import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:marlo_app/app/features/contract/domain/team_model.dart';

class TeamApiServices {
  Future<TeamModel> fetchTeam() async {
    final dio = Dio();
    try {
      dio.options.headers["authtoken"] = "ApiEndpoints.token";
      Response response = await dio.get("ApiEndpoints.teamUrl");
      if (response.statusCode == 200) {
        return TeamModel.fromJson(response.data);
      } else {
        return TeamModel.fromJson(response.data);
      }
    } on DioError catch (e) {
      return TeamModel(message: e.message, status: false);
    } catch (e) {
      log(e.toString());
      return TeamModel(message: e.toString(), status: false);
    }
  }
}
