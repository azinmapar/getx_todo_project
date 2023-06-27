import 'package:flutter/material.dart';
import 'package:getx_todo_project/constants/my_colors.dart';

import '../constants/constants.dart';

class TodoTextField extends StatelessWidget {
  const TodoTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: k30Height),
      child: const TextField(
        maxLines: 6,
        cursorColor: kPrimaryColor,
        cursorHeight: 20,
        decoration: InputDecoration(
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
