import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_todo_project/constants/my_colors.dart';
import 'package:getx_todo_project/controllers/text_field_conroller.dart';

import '../constants/constants.dart';

class TodoTextField extends StatelessWidget {
  const TodoTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: k30Height),
      child: TextField(
        controller: Get.find<TextFieldController>().title,
        maxLines: 6,
        cursorColor: kPrimaryColor,
        cursorHeight: 20,
        decoration: const InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black45),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: kPrimaryColor),
          ),
        ),
      ),
    );
  }
}
