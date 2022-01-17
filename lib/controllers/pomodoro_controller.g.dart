// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PomodoroController on _PomodoroControllerBase, Store {
  Computed<String>? _$timeComputed;

  @override
  String get time => (_$timeComputed ??= Computed<String>(() => super.time,
          name: '_PomodoroControllerBase.time'))
      .value;

  final _$statusAtom = Atom(name: '_PomodoroControllerBase.status');

  @override
  Status get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(Status value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  final _$minutesAtom = Atom(name: '_PomodoroControllerBase.minutes');

  @override
  int get minutes {
    _$minutesAtom.reportRead();
    return super.minutes;
  }

  @override
  set minutes(int value) {
    _$minutesAtom.reportWrite(value, super.minutes, () {
      super.minutes = value;
    });
  }

  final _$secondsAtom = Atom(name: '_PomodoroControllerBase.seconds');

  @override
  int get seconds {
    _$secondsAtom.reportRead();
    return super.seconds;
  }

  @override
  set seconds(int value) {
    _$secondsAtom.reportWrite(value, super.seconds, () {
      super.seconds = value;
    });
  }

  final _$workTimeAtom = Atom(name: '_PomodoroControllerBase.workTime');

  @override
  int get workTime {
    _$workTimeAtom.reportRead();
    return super.workTime;
  }

  @override
  set workTime(int value) {
    _$workTimeAtom.reportWrite(value, super.workTime, () {
      super.workTime = value;
    });
  }

  final _$restTimeAtom = Atom(name: '_PomodoroControllerBase.restTime');

  @override
  int get restTime {
    _$restTimeAtom.reportRead();
    return super.restTime;
  }

  @override
  set restTime(int value) {
    _$restTimeAtom.reportWrite(value, super.restTime, () {
      super.restTime = value;
    });
  }

  final _$intervalTypeAtom = Atom(name: '_PomodoroControllerBase.intervalType');

  @override
  IntervalType get intervalType {
    _$intervalTypeAtom.reportRead();
    return super.intervalType;
  }

  @override
  set intervalType(IntervalType value) {
    _$intervalTypeAtom.reportWrite(value, super.intervalType, () {
      super.intervalType = value;
    });
  }

  final _$_PomodoroControllerBaseActionController =
      ActionController(name: '_PomodoroControllerBase');

  @override
  void start() {
    final _$actionInfo = _$_PomodoroControllerBaseActionController.startAction(
        name: '_PomodoroControllerBase.start');
    try {
      return super.start();
    } finally {
      _$_PomodoroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void stop() {
    final _$actionInfo = _$_PomodoroControllerBaseActionController.startAction(
        name: '_PomodoroControllerBase.stop');
    try {
      return super.stop();
    } finally {
      _$_PomodoroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void restart() {
    final _$actionInfo = _$_PomodoroControllerBaseActionController.startAction(
        name: '_PomodoroControllerBase.restart');
    try {
      return super.restart();
    } finally {
      _$_PomodoroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementWorkTime() {
    final _$actionInfo = _$_PomodoroControllerBaseActionController.startAction(
        name: '_PomodoroControllerBase.incrementWorkTime');
    try {
      return super.incrementWorkTime();
    } finally {
      _$_PomodoroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementWorkTime() {
    final _$actionInfo = _$_PomodoroControllerBaseActionController.startAction(
        name: '_PomodoroControllerBase.decrementWorkTime');
    try {
      return super.decrementWorkTime();
    } finally {
      _$_PomodoroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementRestTime() {
    final _$actionInfo = _$_PomodoroControllerBaseActionController.startAction(
        name: '_PomodoroControllerBase.incrementRestTime');
    try {
      return super.incrementRestTime();
    } finally {
      _$_PomodoroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementRestTime() {
    final _$actionInfo = _$_PomodoroControllerBaseActionController.startAction(
        name: '_PomodoroControllerBase.decrementRestTime');
    try {
      return super.decrementRestTime();
    } finally {
      _$_PomodoroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
status: ${status},
minutes: ${minutes},
seconds: ${seconds},
workTime: ${workTime},
restTime: ${restTime},
intervalType: ${intervalType},
time: ${time}
    ''';
  }
}
