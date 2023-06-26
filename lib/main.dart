import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo_project/bindings/my_bindings.dart';
import 'package:getx_todo_project/routes/my_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      defaultTransition: Transition.fadeIn,
      getPages: MyRoutes.pages,
      initialBinding: MyBindings(),
    );
  }
}
