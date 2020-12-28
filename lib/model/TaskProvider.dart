import 'package:flutter/cupertino.dart';
import 'package:flutter_app/model/Tasks.dart';
import 'package:flutter_app/service/TaskService.dart';

class TaskProvider extends ChangeNotifier {
  var _taskService = TaskService();
  List<Tasks> array =  List<Tasks>();
  bool value = false;
  
  Future getData() async {
    List<Tasks> newArray = [];
    await _taskService
        .ReadTask()
        .whenComplete(() => array.clear())
        .whenComplete(() => array.addAll(newArray))
        .whenComplete(() => notifyListeners());
  }

  updateTask(int id,status) async {
    await _taskService
        .updateTask(id,status)
        .whenComplete(() => notifyListeners());
  }

  deleteTask(String table,int id) async {
    await _taskService.DeleteTask(table,id);
    getData();
  }

  Future insertTask(Tasks task) async {
    await _taskService.saveTask(task);
    getData();
  }

}