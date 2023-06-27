import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_todo_project/constants/my_colors.dart';

import '../main.dart';

class MyFloatingActionButtonWidget extends StatelessWidget {
  const MyFloatingActionButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: 'hero',
      backgroundColor: kPrimaryColor,
      onPressed: () {
        Get.toNamed('/add_task_screen')?.then(
            (value) => MyApp.changeColor(kPrimaryColor, Brightness.light));
      },
      child: const Icon(Icons.add),
    );
  }
}
