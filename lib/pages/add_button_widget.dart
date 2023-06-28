import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo_project/constants/my_colors.dart';
import 'package:getx_todo_project/controllers/task_controller.dart';
import 'package:getx_todo_project/controllers/text_field_conroller.dart';
import 'package:getx_todo_project/models/task_model.dart';

import '../constants/constants.dart';

class AddButtonWidget extends GetView<TaskController> {
  const AddButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: k40Height,
      margin: EdgeInsets.symmetric(horizontal: k30Height),
      child: ElevatedButton(
        onPressed: () {
          if (controller.isEditing) {
            var task = Get.find<TaskController>()
                .taskList[Get.find<TaskController>().index];
            task.title = Get.find<TextFieldController>().title?.text;
            task.subtitle = Get.find<TextFieldController>().subtitle?.text;
            Get.find<TaskController>()
                .taskList[Get.find<TaskController>().index] = task;
          } else {
            controller.taskList.add(
              TaskModel(
                title: Get.find<TextFieldController>().title?.text,
                subtitle: Get.find<TextFieldController>().subtitle?.text,
              ),
            );
          }

          Get.back();
        },
        style: TextButton.styleFrom(
          backgroundColor: kPrimaryColor,
        ),
        child: Text(
          Get.find<TaskController>().isEditing ? 'Edit' : 'Add',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
