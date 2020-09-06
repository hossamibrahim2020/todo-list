import 'package:flutter/material.dart';
import 'ui/view/home_view.dart';
import 'ui/shared_ui/theme.dart';
import 'core/viewmodel/task_viewmodel.dart';

final TaskViewmodel taskViewmodel = TaskViewmodel();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppThemeDark.theme,
      home: HomeView(),
    );
  }
}
