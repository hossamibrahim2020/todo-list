import 'package:flutter/material.dart';
import '../../core/model/tasks_model.dart';
import 'package:todolist/main.dart';
import '../shared_ui/reusable_item.dart';
import 'add_task_view.dart';
import 'detail_view.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Tasks'),
        centerTitle: true,
      ),
      body: _body(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _floatingActionButton(context),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _body(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: StreamBuilder<List<TasksModel>>(
          stream: taskViewmodel.tasksAppDatabase.watchAllTasks(),
          initialData: [],
          builder: (
            BuildContext context,
            AsyncSnapshot<List<TasksModel>> snapshot,
          ) {
            switch (snapshot.data.length) {
              case null:
                {
                  return _indicator();
                }
                break;
              case null:
                {
                  return _indicator();
                }
                break;
              default:
                {
                  if (!snapshot.hasData) {
                    return _indicator();
                  } else {
                    if (snapshot.data != null && !snapshot.hasError) {
                      return SingleChildScrollView(
                        child: Column(
                          children: snapshot.data.map(
                            (e) {
                              return ReusableItem(
                                title: e.title.toString(),
                                complete: e.complete,
                                delete: () {
                                  taskViewmodel.deletAction(e, context);
                                },
                                goToDetail: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => DetailView(e: e),
                                    ),
                                  );
                                },
                                completeController: () {
                                  taskViewmodel.completeAction(e);
                                },
                              );
                            },
                          ).toList(),
                        ),
                      );
                    }
                  }
                }
            }
            return _indicator();
          },
        ),
      ),
    );
  }

  FloatingActionButton _floatingActionButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => AddTaskView(),
          ),
        );
      },
      child: Icon(Icons.add),
    );
  }

  Container _bottomNavigationBar(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      color: Theme.of(context).primaryColor,
    );
  }

  Center _indicator() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}

