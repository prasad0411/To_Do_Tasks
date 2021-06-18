import 'package:flutter/material.dart';
import 'package:todoey/screens/add_Task_Screen.dart';
import 'package:todoey/widgets/tasks_list.dart';
import 'add_Task_Screen.dart';
class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlue,
        floatingActionButton: FloatingActionButton(backgroundColor: Colors.lightBlue,child:Icon(Icons.add),
        onPressed: (){
          showModalBottomSheet(context: context, builder: (context)=> AddTaskScreen());
        }),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(30,30,30,30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.list, size: 30, color: Colors.lightBlue)),
                    SizedBox(height:10),
                  Text("Todoey",style: TextStyle(fontSize: 40,fontWeight:FontWeight.w700,color: Colors.white)),
                  Text(("12 tasks"),style: TextStyle(fontSize: 20,color: Colors.white)),
                ],
              ),
            ),
            Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal:20),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                color: Colors.white),
                child: TasksList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
