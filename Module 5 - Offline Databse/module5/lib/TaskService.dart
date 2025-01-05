import 'package:module5/Task.dart';
import 'package:module5/Repository.dart';

class Taskservice {
  late Repository _repository;

  Taskservice() {
    _repository = Repository();
  }

  insertService(Task task) {
    return _repository.insertData("Task", task.toMap());
  }

  readService() {
    return _repository.readData("Task");
  }

  updateService(Task task) {
    return _repository.updateData("Task", task.toMap());
  }

  deleteService(Task task) {
    return _repository.deleteData("Task", task.toMap());
  }
}
