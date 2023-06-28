import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_todo_project/models/task_model.dart';

class TaskController extends GetxController {
  bool isEditing = false;
  int index = 0;
  RxList<TaskModel> taskList = <TaskModel>[].obs;

  @override
  void onInit() {
    var box = GetStorage();
    if (box.read('tasks') != null) {
      var list = box.read('tasks');
      for (var item in list) {
        taskList.add(TaskModel.fromJson(item));
      }
    }

    ever(taskList, (value) {
      box.write('tasks', taskList.toJson());
    });

    super.onInit();
  }
}
