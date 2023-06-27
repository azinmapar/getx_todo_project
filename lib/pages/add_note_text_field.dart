import 'package:flutter/material.dart';

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
