part of 'calendar_day_bloc.dart';

abstract class CalendarDayState extends Equatable {
  const CalendarDayState();
}

class CalendarDayInitial extends CalendarDayState {
  @override
  List<Object> get props => [];
}

class CalendarDayLoading extends CalendarDayState {
  @override
  List<Object?> get props => [];
}

class CalendarDayLoaded extends CalendarDayState {
  final TrackedDayEntity? trackedDayEntity;
  final List<IntakeEntity> intakeList;

  const CalendarDayLoaded(
      this.trackedDayEntity,
      this.intakeList);

  @override
  List<Object?> get props => [trackedDayEntity];
}
