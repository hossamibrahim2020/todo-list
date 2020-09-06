import 'dart:math';
import 'package:flutter/material.dart';
import 'package:todolist/main.dart';
import '../shared_ui/custom_text_form_field.dart';
import '../shared_ui/custom_button.dart';

class AddTaskView extends StatefulWidget {
  @override
  _AddTaskViewState createState() => _AddTaskViewState();
}

class _AddTaskViewState extends State<AddTaskView> {
  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();
  GlobalKey<FormState> key = GlobalKey<FormState>();
  int id = Random().nextInt(4000);
  @override
  void dispose() {
    titleController.dispose();
    bodyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Task'),
        centerTitle: true,
      ),
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Form(
          key: key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CustomTextFormField(
                label: 'title of Task',
                controller: titleController,
              ),
              CustomTextFormField(
                label: 'body of Task',
                controller: bodyController,
              ),
              CustomButton(
                label: 'Save',
                onTap: () => taskViewmodel.add(
                  context: context,
                  id: id,
                  key: key,
                  titleController: titleController,
                  bodyController: bodyController,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
