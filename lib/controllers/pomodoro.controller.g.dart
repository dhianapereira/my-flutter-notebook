// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro.controller.dart';

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
  Computed<bool>? _$incrementWorkNotEnabledComputed;

  @override
  bool get incrementWorkNotEnabled => (_$incrementWorkNotEnabledComputed ??=
          Computed<bool>(() => super.incrementWorkNotEnabled,
              name: '_PomodoroControllerBase.incrementWorkNotEnabled'))
      .value;
  Computed<bool>? _$decrementWorkNotEnabledComputed;

  @override
  bool get decrementWorkNotEnabled => (_$decrementWorkNotEnabledComputed ??=
          Computed<bool>(() => super.decrementWorkNotEnabled,
              name: '_PomodoroControllerBase.decrementWorkNotEnabled'))
      .value;
  Computed<bool>? _$incrementRestNotEnabledComputed;

  @override
  bool get incrementRestNotEnabled => (_$incrementRestNotEnabledComputed ??=
          Computed<bool>(() => super.incrementRestNotEnabled,
              name: '_PomodoroControllerBase.incrementRestNotEnabled'))
      .value;
  Computed<bool>? _$decrementRestNotEnabledComputed;

  @override
  bool get decrementRestNotEnabled => (_$decrementRestNotEnabledComputed ??=
          Computed<bool>(() => super.decrementRestNotEnabled,
              name: '_PomodoroControllerBase.decrementRestNotEnabled'))
      .value;

  final _$workTimeAtom = Atom(name: '_PomodoroControllerBase.workTime');

  @override
  PomodoroModel get workTime {
    _$workTimeAtom.reportRead();
    return super.workTime;
  }

  @override
  set workTime(PomodoroModel value) {
    _$workTimeAtom.reportWrite(value, super.workTime, () {
      super.workTime = value;
    });
  }

  final _$restTimeAtom = Atom(name: '_PomodoroControllerBase.restTime');

  @override
  PomodoroModel get restTime {
    _$restTimeAtom.reportRead();
    return super.restTime;
  }

  @override
  set restTime(PomodoroModel value) {
    _$restTimeAtom.reportWrite(value, super.restTime, () {
      super.restTime = value;
    });
  }

  final _$durationAtom = Atom(name: '_PomodoroControllerBase.duration');

  @override
  Duration get duration {
    _$durationAtom.reportRead();
    return super.duration;
  }

  @override
  set duration(Duration value) {
    _$durationAtom.reportWrite(value, super.duration, () {
      super.duration = value;
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
workTime: ${workTime},
restTime: ${restTime},
duration: ${duration},
intervalType: ${intervalType},
time: ${time},
incrementWorkNotEnabled: ${incrementWorkNotEnabled},
decrementWorkNotEnabled: ${decrementWorkNotEnabled},
incrementRestNotEnabled: ${incrementRestNotEnabled},
decrementRestNotEnabled: ${decrementRestNotEnabled}
    ''';
  }
}
