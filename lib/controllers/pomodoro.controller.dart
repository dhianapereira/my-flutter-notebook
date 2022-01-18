import 'dart:async';
import 'package:mobx/mobx.dart';
import 'package:pomodoro/core/enums/interval_type_enum.dart';
import 'package:pomodoro/core/enums/status_enum.dart';
part 'pomodoro.controller.g.dart';

class PomodoroController = _PomodoroControllerBase with _$PomodoroController;

abstract class _PomodoroControllerBase with Store {
  Timer? stopwatch;

  @observable
  Status status = Status.initial;

  @observable
  int minutes = 25;

  @observable
  int seconds = 0;

  @observable
  int workTime = 25;

  @observable
  int restTime = 5;

  @observable
  IntervalType intervalType = IntervalType.work;

  @computed
  String get time {
    return "${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}";
  }

  bool get isWorking => intervalType == IntervalType.work;

  bool get isResting => intervalType == IntervalType.rest;

  bool get wasStarted => status == Status.started;

  bool get wasStopped => status == Status.stopped;

  @computed
  bool get workNotEnabled => status != Status.initial && isWorking;

  @computed
  bool get restNotEnabled => status != Status.initial && isResting;

  @action
  void start() {
    status = Status.started;

    stopwatch = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (minutes == 0 && seconds == 0) {
        _changeIntervalType();
      } else if (seconds == 0) {
        seconds = 59;
        minutes--;
      } else {
        seconds--;
      }
    });
  }

  @action
  void stop() {
    status = Status.stopped;

    stopwatch?.cancel();
  }

  @action
  void restart() {
    status = Status.initial;

    stopwatch?.cancel();

    minutes = isWorking ? workTime : restTime;
    seconds = 0;
  }

  @action
  void incrementWorkTime() {
    workTime++;

    if (isWorking) {
      restart();
    }
  }

  @action
  void decrementWorkTime() {
    if (workTime > 1) {
      workTime--;

      if (isWorking) {
        restart();
      }
    }
  }

  @action
  void incrementRestTime() {
    restTime++;

    if (isResting) {
      restart();
    }
  }

  @action
  void decrementRestTime() {
    if (restTime > 1) {
      restTime--;

      if (isResting) {
        restart();
      }
    }
  }

  void _changeIntervalType() {
    if (isWorking) {
      intervalType = IntervalType.rest;
      minutes = restTime;
    } else {
      intervalType = IntervalType.work;
      minutes = workTime;
    }

    seconds = 0;
  }
}
