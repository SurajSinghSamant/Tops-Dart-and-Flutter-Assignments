import 'package:flutter/material.dart';
import 'package:module5/Task.dart';
import 'package:module5/TaskService.dart';
import 'package:module5/Screens/Dashboard.dart';

class MyEditTask extends StatefulWidget {
  final Task task;
  MyEditTask({super.key, required this.task});

  @override
  State<MyEditTask> createState() => _MyEditTaskState();
}

class _MyEditTaskState extends State<MyEditTask> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  TextEditingController _dateController = TextEditingController();
  String _priority = 'low';

  @override
  void initState() {
    super.initState();

    setState(() {
      _nameController.text = widget.task.name!;
      _descriptionController.text = widget.task.description!;
      _dateController.text = widget.task.dateTime?.toIso8601String() ?? '';
      _priority = widget.task.priority!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Task"),
        backgroundColor: Colors.deepPurple[300],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(12),
            child: TextField(
              controller: _nameController,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                hintText: "Enter Task Name",
                labelText: "Task Name",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: TextField(
              controller: _descriptionController,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                hintText: "Enter Task Description",
                labelText: "Description",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: TextField(
              controller: _dateController,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                hintText: "Enter Due Date",
                labelText: "Due Date",
              ),
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                );
                if (pickedDate != null) {
                  _dateController.text = pickedDate.toIso8601String();
                }
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: DropdownButtonFormField<String>(
              value: _priority,
              decoration: InputDecoration(
                labelText: "Priority",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _priority = value!;
                });
              },
              items: ['High', 'Average', 'Low']
                  .map((priority) => DropdownMenuItem(
                        value: priority,
                        child: Text(priority),
                      ))
                  .toList(),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              String taskName = _nameController.text.trim();
              String taskDescription = _descriptionController.text.trim();
              DateTime taskDate = DateTime.parse(_dateController.text.trim());
              String taskPriority = _priority;

              var updatedTask = Task(
                id: widget.task.id,
                name: taskName,
                description: taskDescription,
                dateTime: taskDate,
                priority: taskPriority,
                isCompleted: widget.task.isCompleted,
              );

              var taskService = Taskservice();
              var result = await taskService.updateService(updatedTask);

              print("Task updated: $result");

              _nameController.clear();
              _descriptionController.clear();
              _dateController.clear();

              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MyDashboard()),
              );
            },
            child: Text("Update Task"),
          ),
        ],
      ),
    );
  }
}
