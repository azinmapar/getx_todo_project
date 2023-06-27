import 'package:flutter/material.dart';

import '../constants/constants.dart';

class AddTaskScreenTitle extends StatelessWidget {
  const AddTaskScreenTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: k30Height,
        top: k10Height,
      ),
      child: Text(
        'What are you planning?',
        style: TextStyle(
          color: Colors.grey[600],
          fontSize: k18Font,
        ),
      ),
    );
  }
}
