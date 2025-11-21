import 'package:opennutritracker/core/data/repository/intake_repository.dart';
import 'package:opennutritracker/core/domain/entity/intake_entity.dart';

class GetIntakeUsecase {
  final IntakeRepository _intakeRepository;

  GetIntakeUsecase(this._intakeRepository);

  Future<List<IntakeEntity>> getIntakeByDay(DateTime day) async {
    return await _intakeRepository.getIntakeByDate(day);
  }

  Future<List<IntakeEntity>> getTodayIntake() async =>
      getIntakeByDay(DateTime.now());

  Future<List<IntakeEntity>> getRecentIntake() async {
    return _intakeRepository.getRecentIntake();
  }

  Future<IntakeEntity?> getIntakeById(String intakeId) async {
    return _intakeRepository.getIntakeById(intakeId);
  }
}
