// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TaskViewmodel on _TaskViewmodel, Store {
  final _$tasksAppDatabaseAtom = Atom(name: '_TaskViewmodel.tasksAppDatabase');

  @override
  TasksAppDatabase get tasksAppDatabase {
    _$tasksAppDatabaseAtom.reportRead();
    return super.tasksAppDatabase;
  }

  @override
  set tasksAppDatabase(TasksAppDatabase value) {
    _$tasksAppDatabaseAtom.reportWrite(value, super.tasksAppDatabase, () {
      super.tasksAppDatabase = value;
    });
  }

  final _$_TaskViewmodelActionController =
      ActionController(name: '_TaskViewmodel');

  @override
  void add(
      {GlobalKey<FormState> key,
      int id,
      TextEditingController titleController,
      TextEditingController bodyController,
      BuildContext context}) {
    final _$actionInfo = _$_TaskViewmodelActionController.startAction(
        name: '_TaskViewmodel.add');
    try {
      return super.add(
          key: key,
          id: id,
          titleController: titleController,
          bodyController: bodyController,
          context: context);
    } finally {
      _$_TaskViewmodelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void completeAction(dynamic e) {
    final _$actionInfo = _$_TaskViewmodelActionController.startAction(
        name: '_TaskViewmodel.completeAction');
    try {
      return super.completeAction(e);
    } finally {
      _$_TaskViewmodelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deletAction(dynamic e, BuildContext context) {
    final _$actionInfo = _$_TaskViewmodelActionController.startAction(
        name: '_TaskViewmodel.deletAction');
    try {
      return super.deletAction(e, context);
    } finally {
      _$_TaskViewmodelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tasksAppDatabase: ${tasksAppDatabase}
    ''';
  }
}
