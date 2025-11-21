import 'package:opennutritracker/core/data/repository/config_repository.dart';
import 'package:opennutritracker/core/data/repository/user_repository.dart';
import 'package:opennutritracker/core/domain/entity/tdee_formula_type.dart';
import 'package:opennutritracker/core/domain/entity/user_entity.dart';
import 'package:opennutritracker/core/utils/calc/calorie_goal_calc.dart';

class GetKcalGoalUsecase {
  final UserRepository _userRepository;
  final ConfigRepository _configRepository;

  GetKcalGoalUsecase(
      this._userRepository, this._configRepository);

  Future<double> getKcalGoal(
      {UserEntity? userEntity,
      double? totalKcalActivitiesParam,
      double? kcalUserAdjustment}) async {
    final config = await _configRepository.getConfig();
    final user = userEntity ?? await _userRepository.getUserData();
    final totalKcalActivities = totalKcalActivitiesParam ?? 0.0;
    final formulaType = config.tdeeFormulaType;

    if (formulaType == TdeeFormulaType.manual &&
        config.manualCalorieGoal != null &&
        config.manualCalorieGoal! > 0) {
      return config.manualCalorieGoal!;
    }

    return CalorieGoalCalc.getTotalKcalGoal(user, totalKcalActivities,
        kcalUserAdjustment: config.userKcalAdjustment,
        formulaType: formulaType);
  }
}
