import 'package:get/get.dart';
import 'package:getx_todo_project/controllers/task_controller.dart';
import 'package:getx_todo_project/controllers/text_field_conroller.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TaskController());
    Get.put(TextFieldController());
  }
}
