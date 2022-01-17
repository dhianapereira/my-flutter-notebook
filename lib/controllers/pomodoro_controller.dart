import 'package:mobx/mobx.dart';
part 'pomodoro_controller.g.dart';

class PomodoroController = _PomodoroControllerBase with _$PomodoroController;

abstract class _PomodoroControllerBase with Store {
  @observable
  int workingTime = 2;

  @observable
  int restTime = 1;

  @action
  void incrementWorkingTime() {
    workingTime++;
  }

  @action
  void decrementWorkingTime() {
    workingTime--;
  }

  @action
  void incrementRestTime() {
    restTime++;
  }

  @action
  void decrementRestTime() {
    restTime--;
  }
}
