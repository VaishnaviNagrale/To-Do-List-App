import 'package:flutter/material.dart';
import 'package:to_do_app2/tasks_components/TaskTile.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app2/Model/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              task.name,
              task.isDone,
              (bool? checkBoxState) {
                taskData.updateTask(task);
              },
               () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
