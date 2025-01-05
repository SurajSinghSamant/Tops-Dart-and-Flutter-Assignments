class Task {
  int? id;
  String? name;
  String? description;
  DateTime? dateTime;
  String? priority;
  bool isCompleted;

  Task({
    this.id,
    required this.name,
    required this.description,
    required this.dateTime,
    required this.priority,
    required this.isCompleted,
  });

  Map<String, dynamic> toMap() {
    var taskMap = <String, dynamic>{};
    taskMap["id"] = id ?? null;
    taskMap["name"] = name;
    taskMap["description"] = description;
    taskMap["dateTime"] = dateTime?.toIso8601String();
    taskMap["priority"] = priority;
    taskMap["isCompleted"] = isCompleted == true ? 1 : 0;
    return taskMap;
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      dateTime: DateTime.parse(map['dateTime']),
      priority: map['priority'],
      isCompleted: map['isCompleted'] == 1,
    );
  }
}
