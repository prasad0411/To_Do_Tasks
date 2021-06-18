import 'package:flutter/material.dart';
import 'tasks_tile.dart';
class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView(children:[
      TaskTile(),
      TaskTile(),    
      TaskTile(),
    ]);
  }
}