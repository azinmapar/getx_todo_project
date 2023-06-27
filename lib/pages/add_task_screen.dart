import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getx_todo_project/main.dart';
import 'package:getx_todo_project/pages/add_button_widget.dart';
import 'package:getx_todo_project/pages/add_note_text_field.dart';
import 'package:getx_todo_project/pages/todo_text_field.dart';
import 'package:getx_todo_project/widgets/add_task_screen_title.dart';
import '../constants/constants.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MyApp.changeColor(const Color(0xfffafafa), Brightness.dark);
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: Get.width * 0.352,
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        'New Task',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: k20Font,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      Hero(
                        tag: 'hero',
                        child: Material(
                          child: IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: const Icon(
                              Icons.close,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const AddTaskScreenTitle(),
            const TodoTextField(),
            const AddNoteTextField(),
            const AddButtonWidget(),
          ],
        ),
      ),
    );
  }
}
