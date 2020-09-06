import 'package:moor_flutter/moor_flutter.dart';

part 'tasks_model.g.dart';

class TasksModels extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get body => text()();
  BoolColumn get complete => boolean().withDefault(const Constant(false))();
}

@UseMoor(tables: [TasksModels])
class TasksAppDatabase extends _$TasksAppDatabase {
  TasksAppDatabase()
      : super(
          FlutterQueryExecutor.inDatabaseFolder(
            path: 'tasks.sqlite',
            logStatements: true,
          ),
        );

  @override
  int get schemaVersion => 1;
  Future<List<TasksModel>> getAllTasks() => select(tasksModels).get();
  Stream<List<TasksModel>> watchAllTasks() => select(tasksModels).watch();
  Future insertTask(TasksModel tasksModel) => into(tasksModels).insert(tasksModel);
  Future deleteTask(TasksModel tasksModel) => delete(tasksModels).delete(tasksModel);
  Future updateTask(TasksModel tasksModel) => update(tasksModels).replace(tasksModel);
}
