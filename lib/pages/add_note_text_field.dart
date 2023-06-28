import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_todo_project/controllers/text_field_conroller.dart';

import '../constants/constants.dart';
import '../constants/my_colors.dart';

class AddNoteTextField extends StatelessWidget {
  const AddNoteTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: k20Height),
      child: TextField(
        controller: Get.find<TextFieldController>().subtitle,
        maxLength: 30,
        cursorColor: kPrimaryColor,
        cursorHeight: 20,
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.bookmark_border,
            color: Colors.black45,
          ),
          border: InputBorder.none,
          counter: Container(),
          hintText: 'Add Note',
        ),
      ),
    );
  }
}
