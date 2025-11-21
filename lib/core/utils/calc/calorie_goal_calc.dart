import 'package:opennutritracker/core/domain/entity/user_entity.dart';
import 'package:opennutritracker/core/domain/entity/user_weight_goal_entity.dart';
import 'package:opennutritracker/core/domain/entity/tdee_formula_type.dart';
import 'package:opennutritracker/core/utils/calc/tdee_calc.dart';

class CalorieGoalCalc {
  static const double loseWeightKcalAdjustment = -500;
  static const double maintainWeightKcalAdjustment = 0;
  static const double gainWeightKcalAdjustment = 500;

  static double getDailyKcalLeft(
          double totalKcalGoal, double totalKcalIntake) =>
      totalKcalGoal - totalKcalIntake;

  static double getTdee(UserEntity userEntity,
      {TdeeFormulaType formulaType = TdeeFormulaType.iom2005}) {
    switch (formulaType) {
      case TdeeFormulaType.who2001:
        return TDEECalc.getTDEEKcalWHO2001(userEntity);
      case TdeeFormulaType.manual:
      case TdeeFormulaType.iom2005:
        return TDEECalc.getTDEEKcalIOM2005(userEntity);
    }
  }

  static double getTotalKcalGoal(
          UserEntity userEntity, double totalKcalActivities,
          {double? kcalUserAdjustment,
          TdeeFormulaType formulaType = TdeeFormulaType.iom2005}) =>
      getTdee(userEntity, formulaType: formulaType) +
      getKcalGoalAdjustment(userEntity.goal) +
      (kcalUserAdjustment ?? 0) +
      totalKcalActivities;

  static double getKcalGoalAdjustment(UserWeightGoalEntity goal) {
    double kcalAdjustment;
    if (goal == UserWeightGoalEntity.loseWeight) {
      kcalAdjustment = loseWeightKcalAdjustment;
    } else if (goal == UserWeightGoalEntity.gainWeight) {
      kcalAdjustment = gainWeightKcalAdjustment;
    } else {
      kcalAdjustment = maintainWeightKcalAdjustment;
    }
    return kcalAdjustment;
  }
}
