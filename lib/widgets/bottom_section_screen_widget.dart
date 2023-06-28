import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo_project/constants/constants.dart';
import 'package:getx_todo_project/constants/my_colors.dart';
import 'package:getx_todo_project/controllers/task_controller.dart';
import 'package:getx_todo_project/controllers/text_field_conroller.dart';

class BottomSectionScreenWidget extends GetView<TaskController> {
  const BottomSectionScreenWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * 0.6,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
      ),
      child: Container(
        margin: EdgeInsets.all(k30Height),
        child: Obx(() {
          return ListView.separated(
              itemBuilder: (context, index) {
                var task = Get.find<TaskController>().taskList[index];
                return ListTile(
                  onLongPress: () {
                    myAlertDialog(index);
                  },
                  onTap: () {
                    controller.isEditing = true;
                    controller.index = index;
                    Get.find<TextFieldController>().title?.text =
                        controller.taskList[index].title!;
                    Get.find<TextFieldController>().subtitle?.text =
                        controller.taskList[index].subtitle!;
                    Get.toNamed('/add_task_screen');
                  },
                  title: Text(controller.taskList[index].title ?? ''),
                  subtitle: Text(controller.taskList[index].subtitle ?? ''),
                  trailing: Checkbox(
                    value: controller.taskList[index].status,
                    onChanged: (value) {
                      task.status = !task.status;
                      Get.find<TaskController>().taskList[index] = task;
                    },
                    activeColor: kPrimaryColor,
                    side: const BorderSide(
                      color: Colors.black45,
                      width: 2.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  height: 2.0,
                  color: Colors.black45,
                );
              },
              itemCount: controller.taskList.length);
        }),
      ),
    );
  }

  Future<dynamic> myAlertDialog(int index) {
    return Get.defaultDialog(
      titleStyle: TextStyle(
          fontSize: k20Font, fontWeight: FontWeight.bold, color: kPrimaryColor),
      middleText: 'Are you sure you want to delete this item?',
      middleTextStyle: TextStyle(
        fontSize: k18Font,
      ),
      textCancel: 'No',
      cancelTextColor: kPrimaryColor,
      textConfirm: 'Yes',
      onConfirm: () {
        controller.taskList.removeAt(index);
        Get.back();
      },
      confirmTextColor: Colors.white,
      buttonColor: kPrimaryColor,
    );
  }
}
