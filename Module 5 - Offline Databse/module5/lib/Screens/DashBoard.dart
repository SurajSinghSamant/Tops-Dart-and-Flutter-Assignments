import 'package:flutter/material.dart';
import 'package:module5/Screens/AddTask.dart';
import 'package:module5/Screens/EditTask.dart';
import 'package:module5/Task.dart';
import 'package:module5/TaskService.dart';

class MyDashboard extends StatefulWidget {
  const MyDashboard({super.key});

  @override
  State<MyDashboard> createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  List<Task> taskList = [];
  var taskService = Taskservice();
  String sortOrder = "Ascending";
  TextEditingController _searchController = TextEditingController();
  String searchQuery = '';

  @override
  void initState() {
    super.initState();
    getRecordsFromDB();

    _searchController.addListener(() {
      setState(() {
        searchQuery = _searchController.text;
      });
      getRecordsFromDB();
    });
  }

  getRecordsFromDB() async {
    var allTasks = await taskService.readService();
    taskList.clear();

    allTasks.forEach((taskMap) {
      Task task = Task.fromMap(taskMap);
      if (task.name!.toLowerCase().contains(searchQuery.toLowerCase())) {
        setState(() {
          taskList.add(task);
        });
      }
    });
    sortTasks();
  }

  void sortTasks() {
    setState(() {
      if (sortOrder == "Ascending") {
        taskList.sort((a, b) => a.dateTime!.compareTo(b.dateTime!));
      } else {
        taskList.sort((a, b) => b.dateTime!.compareTo(a.dateTime!));
      }
    });
  }

  Color getBackgroundColor(Task task) {
    if (task.isCompleted == true) {
      return Colors.grey;
    }

    if (task.dateTime!.isBefore(DateTime.now())) {
      return Colors.blue;
    }
    switch (task.priority) {
      case 'High':
        return Colors.red;
      case 'Average':
        return Colors.blue;
      case 'Low':
        return Colors.green;
      default:
        return Colors.white;
    }
  }

  void showTaskDetailsDialog(Task task) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(task.name ?? "Task Details"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Description: ${task.description ?? 'No description'}"),
              SizedBox(height: 10),
              Text("Due Date: ${task.dateTime}"),
              SizedBox(height: 10),
              Text("Priority: ${task.priority}"),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Close"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Task Dashboard"),
        backgroundColor: Colors.deepPurple[300],
        actions: [
          DropdownButton<String>(
            value: sortOrder,
            dropdownColor: Colors.white,
            onChanged: (String? newValue) {
              setState(() {
                sortOrder = newValue!;
                sortTasks();
              });
            },
            items: ["Ascending", "Descending"]
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(color: Colors.black),
                ),
              );
            }).toList(),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search Tasks',
                hintText: 'Search by task name',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: taskList.isEmpty
                ? Center(child: Text("No Tasks Available"))
                : ListView.builder(
                    itemCount: taskList.length,
                    itemBuilder: (context, index) {
                      Task task = taskList[index];
                      return Padding(
                        padding: EdgeInsets.all(12),
                        child: InkWell(
                          onTap: () {
                            showTaskDetailsDialog(
                                task); 
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: getBackgroundColor(task),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ListTile(
                              title: Text(
                                task.name ?? "",
                                style: TextStyle(fontWeight: FontWeight.bold,
                                  decoration: task.isCompleted == true
                                      ? TextDecoration.lineThrough
                                      : TextDecoration.none,
                                ),
                              ),
                              subtitle: Text(
                                "${task.priority} - Due: ${task.dateTime}",
                                style: TextStyle(
                                  decoration: task.isCompleted == true
                                      ? TextDecoration.lineThrough
                                      : TextDecoration.none,
                                ),
                              ),
                              trailing: Wrap(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              MyEditTask(task: task),
                                        ),
                                      );
                                    },
                                    icon: Icon(
                                      Icons.edit,
                                      color: Colors.white,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () async {
                                      await taskService.deleteService(task);
                                      setState(() {
                                        taskList.removeAt(index);
                                      });
                                    },
                                    icon: Icon(
                                      Icons.delete,
                                      color: Colors.white,
                                    ),
                                  ),
                                  PopupMenuButton<String>(
                                    onSelected: (value) async {
                                      if (value == 'markComplete') {
                                        setState(() {
                                          task.isCompleted = true;
                                        });
                                        await taskService.updateService(task);
                                      }
                                    },
                                    itemBuilder: (context) => [
                                      PopupMenuItem<String>(
                                        value: 'markComplete',
                                        child: Text("Mark as Complete"),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton.extended(onPressed: () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AddTask(),));
      }, label: Text("Add New Task"), icon: Icon(Icons.add),),
    );
  }
}
