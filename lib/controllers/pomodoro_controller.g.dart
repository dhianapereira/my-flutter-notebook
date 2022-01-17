// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PomodoroController on _PomodoroControllerBase, Store {
  final _$workingTimeAtom = Atom(name: '_PomodoroControllerBase.workingTime');

  @override
  int get workingTime {
    _$workingTimeAtom.reportRead();
    return super.workingTime;
  }

  @override
  set workingTime(int value) {
    _$workingTimeAtom.reportWrite(value, super.workingTime, () {
      super.workingTime = value;
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

  final _$_PomodoroControllerBaseActionController =
      ActionController(name: '_PomodoroControllerBase');

  @override
  void incrementWorkingTime() {
    final _$actionInfo = _$_PomodoroControllerBaseActionController.startAction(
        name: '_PomodoroControllerBase.incrementWorkingTime');
    try {
      return super.incrementWorkingTime();
    } finally {
      _$_PomodoroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementWorkingTime() {
    final _$actionInfo = _$_PomodoroControllerBaseActionController.startAction(
        name: '_PomodoroControllerBase.decrementWorkingTime');
    try {
      return super.decrementWorkingTime();
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
workingTime: ${workingTime},
restTime: ${restTime}
    ''';
  }
}
