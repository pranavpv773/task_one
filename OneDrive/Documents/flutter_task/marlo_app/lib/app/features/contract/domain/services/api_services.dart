import 'package:marlo_app/app/features/contract/domain/team_model.dart';

abstract class TeamModelService {
  Future<List<TeamModel>?> fetchApiList({required String query});
}
