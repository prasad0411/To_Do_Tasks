import 'package:flutter/material.dart';
class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color:Colors.white,
          borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight:Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:[
            Text("Add task", textAlign: TextAlign.center,style: TextStyle(fontSize:30,color: Colors.lightBlue)),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            SizedBox(height:10),
            RawMaterialButton(
              child: Text("Add",style: TextStyle(color:Colors.white),),
              fillColor: Colors.lightBlue,
              onPressed: (){})
          ]
        ),
      ),
    );
  }
}