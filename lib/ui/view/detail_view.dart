import 'package:flutter/material.dart';
import 'package:todolist/core/model/tasks_model.dart';

class DetailView extends StatelessWidget {
  final TasksModel e;

  const DetailView({Key key, this.e}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(e.title),
        centerTitle: true,
      ),
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 5,
        ),
        child: Text(e.body),
      ),
    );
  }
}
