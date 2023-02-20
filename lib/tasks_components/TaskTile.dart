import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkBoxCallBack;
  final Function longPressCallback;
  TaskTile(this.taskTitle, this.isChecked, this.checkBoxCallBack,this.longPressCallback);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback(),
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration:
              isChecked ? TextDecoration.lineThrough : TextDecoration.none,
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.white,
        checkColor: Colors.black,
        value: isChecked,
        onChanged: checkBoxCallBack,
      ),
    );
  }
}
// class TaskCheckBox extends StatelessWidget {
//   final bool checkBoxState;
//   final Function(bool?) toggleCheckBoxState;
//   TaskCheckBox({required this.checkBoxState,required this.toggleCheckBoxState});
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
//TaskCheckBox(checkBoxState: isChecked,toggleCheckBoxState: checkBoxCallBack),
// void checkBoxCallBack (bool? checkBoxState) {
//   setState(() {
//     isChecked=checkBoxState!;
//   });
// }
