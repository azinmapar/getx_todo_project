import 'package:flutter/material.dart';
import 'package:getx_todo_project/constants/my_colors.dart';

class MyFloatingActionButtonWidget extends StatelessWidget {
  const MyFloatingActionButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: kPrimaryColor,
      onPressed: () {},
      child: const Icon(Icons.add),
    );
  }
}
