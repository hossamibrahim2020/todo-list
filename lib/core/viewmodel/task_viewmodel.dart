import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:toast/toast.dart';
import '../model/tasks_model.dart';

part 'task_viewmodel.g.dart';

class TaskViewmodel = _TaskViewmodel with _$TaskViewmodel;

abstract class _TaskViewmodel with Store {
  @observable
  TasksAppDatabase tasksAppDatabase = TasksAppDatabase();

  @action
  void add({
    GlobalKey<FormState> key,
    int id,
    TextEditingController titleController,
    TextEditingController bodyController,
    BuildContext context,
  }) {
    if (key.currentState.validate()) {
      tasksAppDatabase.insertTask(
        TasksModel(
          id: id,
          title: titleController.text,
          body: bodyController.text,
          complete: false,
        ),
      );
      Navigator.pop(context);
    }
  }

  @action
  void completeAction(TasksModel e) {
    tasksAppDatabase.updateTask(
      TasksModel(
        id: e.id,
        title: e.title,
        body: e.body,
        complete: e.complete == false ? e.complete = true : e.complete = false,
      ),
    );
  }

  @action
  void deletAction(TasksModel e, BuildContext context) {
    tasksAppDatabase.deleteTask(e);
    Toast.show('Deleted Succesfully', context);
  }
}
