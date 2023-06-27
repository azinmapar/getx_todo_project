import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:getx_todo_project/bindings/my_bindings.dart';
import 'package:getx_todo_project/routes/my_routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        theme: ThemeData(textTheme: GoogleFonts.montserratTextTheme()),
        // * Transition between pages
        defaultTransition: Transition.fadeIn,
        getPages: MyRoutes.pages,
        initialBinding: MyBindings(),
        initialRoute: '/home_screen',
      );
    });
  }
}
