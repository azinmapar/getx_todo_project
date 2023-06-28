import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:getx_todo_project/bindings/my_bindings.dart';
import 'package:getx_todo_project/routes/my_routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(textTheme: GoogleFonts.montserratTextTheme()),
        // * Transition between pages
        defaultTransition: Transition.downToUp,
        getPages: MyRoutes.pages,
        initialBinding: MyBindings(),
        initialRoute: '/home_screen',
      );
    });
  }

  static void changeColor(Color color, Brightness brightness) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarIconBrightness: brightness, statusBarColor: color));
  }
}
