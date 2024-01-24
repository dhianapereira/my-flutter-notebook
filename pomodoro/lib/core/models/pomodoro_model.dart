import 'package:pomodoro/core/enums/status_enum.dart';

class PomodoroModel {
  final Status _status;
  final int _time;

  PomodoroModel(this._time, this._status);

  bool get wasStarted => this._status == Status.started;

  bool get wasStopped => this._status == Status.stopped;

  bool get isInitial => this._status == Status.initial;

  int get time => this._time;
  Status get status => this._status;

  PomodoroModel newStatus(Status newStatus) {
    return PomodoroModel(this._time, newStatus);
  }

  PomodoroModel increment() => PomodoroModel(this._time + 1, status);

  PomodoroModel decrement() => PomodoroModel(this._time - 1, status);
}
