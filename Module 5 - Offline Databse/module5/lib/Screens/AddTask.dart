import 'package:flutter/material.dart';
import 'package:module5/Screens/Dashboard.dart';
import 'package:module5/Task.dart';
import 'package:module5/TaskService.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  TextEditingController _dateController = TextEditingController();
  String _priority = 'Low';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepPurple,
        title: Text(
          "Add Task",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: "Task Name",
                  hintText: "Enter Task Name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _descriptionController,
                decoration: InputDecoration(
                  labelText: "Description",
                  hintText: "Enter Task Description",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _dateController,
                decoration: InputDecoration(
                  labelText: "Due Date",
                  hintText: "Select Date",
                  border: OutlineInputBorder(),
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
              SizedBox(height: 10),
              DropdownButtonFormField<String>(
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
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    var taskName = _nameController.text.trim();
                    var taskDescription = _descriptionController.text.trim();
                    var taskDate = DateTime.parse(_dateController.text.trim());
                    var taskPriority = _priority;

                    var task = Task(
                        name: taskName,
                        description: taskDescription,
                        dateTime: taskDate,
                        priority: taskPriority,
                        isCompleted: false);

                    var taskService = Taskservice();
                    var result = await taskService.insertService(task);
                    print("Task Added: $result");

                    _nameController.clear();
                    _descriptionController.clear();
                    _dateController.clear();
                  }
                },
                child: Text("Add Task"),
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(onPressed: () {
         Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyDashboard()));
      }, label: Text("See Tasks"), icon: Icon(Icons.list_alt_outlined,color: Colors.deepPurple[300],),),
    );
  }
}
