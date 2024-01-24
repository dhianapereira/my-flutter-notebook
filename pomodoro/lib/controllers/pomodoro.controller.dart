import 'dart:async';
import 'package:mobx/mobx.dart';
import 'package:pomodoro/core/enums/interval_type_enum.dart';
import 'package:pomodoro/core/enums/status_enum.dart';
import 'package:pomodoro/core/models/pomodoro_model.dart';
part 'pomodoro.controller.g.dart';

class PomodoroController = _PomodoroControllerBase with _$PomodoroController;

abstract class _PomodoroControllerBase with Store {
  static const int _minMinutes = 1;
  static const int _maxMinutes = 59;

  Timer? stopwatch;

  @observable
  PomodoroModel workTime = PomodoroModel(25, Status.initial);

  @observable
  PomodoroModel restTime = PomodoroModel(5, Status.initial);

  @observable
  Duration duration = Duration(minutes: 25);

  @observable
  IntervalType intervalType = IntervalType.work;

  @computed
  String get time {
    final value = duration.toString().split(':');
    return "${value[1]}:${value[2].split('.').first}";
  }

  bool get isWorking => intervalType == IntervalType.work;

  bool get isResting => intervalType == IntervalType.rest;

  @computed
  bool get incrementWorkNotEnabled {
    return (!workTime.isInitial && isWorking) || workTime.time == _maxMinutes;
  }

  @computed
  bool get decrementWorkNotEnabled {
    return (!workTime.isInitial && isWorking) || workTime.time == _minMinutes;
  }

  @computed
  bool get incrementRestNotEnabled {
    return (!restTime.isInitial && isResting) || restTime.time == _maxMinutes;
  }

  @computed
  bool get decrementRestNotEnabled {
    return (!restTime.isInitial && isResting) || restTime.time == _minMinutes;
  }

  @action
  void start() {
    if (isWorking) {
      workTime = workTime.newStatus(Status.started);
    } else {
      restTime = restTime.newStatus(Status.started);
    }

    stopwatch?.cancel();
    stopwatch = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (duration.inSeconds == 0) {
        _changeIntervalType();
      } else {
        duration -= Duration(seconds: 1);
      }
    });
  }

  @action
  void stop() {
    if (isWorking) {
      workTime = workTime.newStatus(Status.stopped);
    } else {
      restTime = restTime.newStatus(Status.stopped);
    }

    stopwatch?.cancel();
  }

  @action
  void restart() {
    if (isWorking) {
      workTime = workTime.newStatus(Status.initial);
    } else {
      restTime = restTime.newStatus(Status.initial);
    }

    stopwatch?.cancel();

    duration = Duration(minutes: isWorking ? workTime.time : restTime.time);
  }

  @action
  void incrementWorkTime() {
    workTime = workTime.increment();

    if (isWorking) {
      restart();
    }
  }

  @action
  void decrementWorkTime() {
    workTime = workTime.decrement();

    if (isWorking) {
      restart();
    }
  }

  @action
  void incrementRestTime() {
    restTime = restTime.increment();

    if (isResting) {
      restart();
    }
  }

  @action
  void decrementRestTime() {
    restTime = restTime.decrement();

    if (isResting) {
      restart();
    }
  }

  void _changeIntervalType() {
    if (isWorking) {
      intervalType = IntervalType.rest;
      duration = Duration(minutes: restTime.time);
    } else {
      intervalType = IntervalType.work;
      duration = Duration(minutes: workTime.time);
    }

    start();
  }
}
