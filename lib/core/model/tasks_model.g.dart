// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks_model.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class TasksModel extends DataClass implements Insertable<TasksModel> {
  final int id;
  final String title;
  final String body;
  bool complete;
  TasksModel(
      {@required this.id,
      @required this.title,
      @required this.body,
      @required this.complete});
  factory TasksModel.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return TasksModel(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
      body: stringType.mapFromDatabaseResponse(data['${effectivePrefix}body']),
      complete:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}complete']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || body != null) {
      map['body'] = Variable<String>(body);
    }
    if (!nullToAbsent || complete != null) {
      map['complete'] = Variable<bool>(complete);
    }
    return map;
  }

  TasksModelsCompanion toCompanion(bool nullToAbsent) {
    return TasksModelsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      body: body == null && nullToAbsent ? const Value.absent() : Value(body),
      complete: complete == null && nullToAbsent
          ? const Value.absent()
          : Value(complete),
    );
  }

  factory TasksModel.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return TasksModel(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      body: serializer.fromJson<String>(json['body']),
      complete: serializer.fromJson<bool>(json['complete']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'body': serializer.toJson<String>(body),
      'complete': serializer.toJson<bool>(complete),
    };
  }

  TasksModel copyWith({int id, String title, String body, bool complete}) =>
      TasksModel(
        id: id ?? this.id,
        title: title ?? this.title,
        body: body ?? this.body,
        complete: complete ?? this.complete,
      );
  @override
  String toString() {
    return (StringBuffer('TasksModel(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('body: $body, ')
          ..write('complete: $complete')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode,
      $mrjc(title.hashCode, $mrjc(body.hashCode, complete.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is TasksModel &&
          other.id == this.id &&
          other.title == this.title &&
          other.body == this.body &&
          other.complete == this.complete);
}

class TasksModelsCompanion extends UpdateCompanion<TasksModel> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> body;
  final Value<bool> complete;
  const TasksModelsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.body = const Value.absent(),
    this.complete = const Value.absent(),
  });
  TasksModelsCompanion.insert({
    this.id = const Value.absent(),
    @required String title,
    @required String body,
    this.complete = const Value.absent(),
  })  : title = Value(title),
        body = Value(body);
  static Insertable<TasksModel> custom({
    Expression<int> id,
    Expression<String> title,
    Expression<String> body,
    Expression<bool> complete,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (body != null) 'body': body,
      if (complete != null) 'complete': complete,
    });
  }

  TasksModelsCompanion copyWith(
      {Value<int> id,
      Value<String> title,
      Value<String> body,
      Value<bool> complete}) {
    return TasksModelsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
      complete: complete ?? this.complete,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (body.present) {
      map['body'] = Variable<String>(body.value);
    }
    if (complete.present) {
      map['complete'] = Variable<bool>(complete.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TasksModelsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('body: $body, ')
          ..write('complete: $complete')
          ..write(')'))
        .toString();
  }
}

class $TasksModelsTable extends TasksModels
    with TableInfo<$TasksModelsTable, TasksModel> {
  final GeneratedDatabase _db;
  final String _alias;
  $TasksModelsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn(
      'title',
      $tableName,
      false,
    );
  }

  final VerificationMeta _bodyMeta = const VerificationMeta('body');
  GeneratedTextColumn _body;
  @override
  GeneratedTextColumn get body => _body ??= _constructBody();
  GeneratedTextColumn _constructBody() {
    return GeneratedTextColumn(
      'body',
      $tableName,
      false,
    );
  }

  final VerificationMeta _completeMeta = const VerificationMeta('complete');
  GeneratedBoolColumn _complete;
  @override
  GeneratedBoolColumn get complete => _complete ??= _constructComplete();
  GeneratedBoolColumn _constructComplete() {
    return GeneratedBoolColumn('complete', $tableName, false,
        defaultValue: const Constant(false));
  }

  @override
  List<GeneratedColumn> get $columns => [id, title, body, complete];
  @override
  $TasksModelsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'tasks_models';
  @override
  final String actualTableName = 'tasks_models';
  @override
  VerificationContext validateIntegrity(Insertable<TasksModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title'], _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('body')) {
      context.handle(
          _bodyMeta, body.isAcceptableOrUnknown(data['body'], _bodyMeta));
    } else if (isInserting) {
      context.missing(_bodyMeta);
    }
    if (data.containsKey('complete')) {
      context.handle(_completeMeta,
          complete.isAcceptableOrUnknown(data['complete'], _completeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TasksModel map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return TasksModel.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $TasksModelsTable createAlias(String alias) {
    return $TasksModelsTable(_db, alias);
  }
}

abstract class _$TasksAppDatabase extends GeneratedDatabase {
  _$TasksAppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $TasksModelsTable _tasksModels;
  $TasksModelsTable get tasksModels => _tasksModels ??= $TasksModelsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [tasksModels];
}
