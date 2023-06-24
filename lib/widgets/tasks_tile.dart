import 'package:flutter/material.dart';
class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}
 
class _TaskTileState extends State<TaskTile> {
    bool isChecked=false;

    void checkboxCallBack (bool checkBoxState)
      {
      setState(() {
         isChecked=checkBoxState;
        });
      }
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:Text('this is task',style:TextStyle(decoration: isChecked? TextDecoration.lineThrough:null)),
      trailing:TaskCheckbox(checkboxState:isChecked, toggleCheckboxState: checkboxCallBack),
    );
  }
}

class TaskCheckbox extends StatelessWidget {

final bool checkboxState=false;
final Function toggleCheckboxState;
TaskCheckbox({this.checkboxState, this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
       activeColor: Colors.lightBlue,
      value: checkboxState,
      onChanged:toggleCheckboxState,
      );
  }
}
