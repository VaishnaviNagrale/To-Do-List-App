// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:to_do_app2/Model/task_data.dart';
//
// class AddTaskScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     String newTaskTitle='';
//     return Container(
//       color: Colors.blueGrey,
//       child: Stack(
//         fit: StackFit.expand,
//         children: [
//           Image.asset(
//             'assets/pokemon .png',
//             fit: BoxFit.fill,
//             color: Colors.black87,
//             colorBlendMode: BlendMode.darken,
//           ),
//           Column(
//             children: [
//               Text(
//                 'Write here to add up into your task list!',
//                 style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               Container(
//                 width: 500,
//                 child: TextFormField(
//                   onChanged: (String value) {
//                     if (value.trim().isNotEmpty) {
//                       newTaskTitle = value;
//                     }
//                     // newTaskTitle = value;
//                     print(newTaskTitle);
//                   },
//                   cursorHeight: 30,
//                   textAlign: TextAlign.center,
//                   autofocus: true,
//                   decoration: InputDecoration(
//                     labelText: 'Enter a text',
//                     hintText: 'Write a task',
//                     hintStyle: TextStyle(color: Colors.grey),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(15.0),
//                       ),
//                     ),
//                     fillColor: Colors.white,
//                   ),
//                   keyboardType: TextInputType.text,
//                 ),
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               ElevatedButton(
//                 child: Text(
//                   'Add',
//                   style: TextStyle(color: Colors.black, fontSize: 25),
//                 ),
//                 onPressed: () {
//                   if (newTaskTitle != null) {
//                     print(newTaskTitle);
//                     Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
//                     Navigator.pop(context);
//                   }
//                 },
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app2/Model/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   String? newTaskTitle;
    return Container(
      color: Colors.blueGrey,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/pokemon .png',
            fit: BoxFit.fill,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          Column(
            children: [
              Text(
                'Write here to add up into your task list!',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 500,
                child: TextFormField(
                  onChanged: (String newvalue) {
                    newTaskTitle = newvalue;
                  },
                  cursorHeight: 30,
                  textAlign: TextAlign.center,
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: 'Enter a text',
                    hintText: 'Write a task',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                    ),
                    fillColor: Colors.white,
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
                  onPressed: () {
                    if (newTaskTitle != null) {
                     Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle!);
                    }
                    Navigator.pop(context);
                  },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
