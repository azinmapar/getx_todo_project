import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo_project/constants/my_colors.dart';

import '../constants/constants.dart';

class AddButtonWidget extends StatelessWidget {
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
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: kPrimaryColor,
        ),
        child: const Text(
          'Add',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
