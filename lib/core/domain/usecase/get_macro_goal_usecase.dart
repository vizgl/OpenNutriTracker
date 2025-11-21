import 'package:opennutritracker/core/data/repository/config_repository.dart';
import 'package:opennutritracker/core/domain/entity/tdee_formula_type.dart';
import 'package:opennutritracker/core/utils/calc/macro_calc.dart';

class GetMacroGoalUsecase {
  final ConfigRepository _configRepository;

  GetMacroGoalUsecase(this._configRepository);

  Future<double> getCarbsGoal(double totalCalorieGoal) async {
    final config = await _configRepository.getConfig();
    final userCarbGoal = config.userCarbGoalPct;

    if (config.tdeeFormulaType == TdeeFormulaType.manual &&
        config.manualCarbsGoal != null &&
        config.manualCarbsGoal! > 0) {
      return config.manualCarbsGoal!;
    }

    return MacroCalc.getTotalCarbsGoal(totalCalorieGoal,
        userCarbsGoal: userCarbGoal);
  }

  Future<double> getFatsGoal(double totalCalorieGoal) async {
    final config = await _configRepository.getConfig();
    final userFatGoal = config.userFatGoalPct;

    if (config.tdeeFormulaType == TdeeFormulaType.manual &&
        config.manualFatGoal != null &&
        config.manualFatGoal! > 0) {
      return config.manualFatGoal!;
    }

    return MacroCalc.getTotalFatsGoal(totalCalorieGoal,
        userFatsGoal: userFatGoal);
  }

  Future<double> getProteinsGoal(double totalCalorieGoal) async {
    final config = await _configRepository.getConfig();
    final userProteinGoal = config.userProteinGoalPct;

    if (config.tdeeFormulaType == TdeeFormulaType.manual &&
        config.manualProteinGoal != null &&
        config.manualProteinGoal! > 0) {
      return config.manualProteinGoal!;
    }

    return MacroCalc.getTotalProteinsGoal(totalCalorieGoal,
        userProteinsGoal: userProteinGoal);
  }
}
