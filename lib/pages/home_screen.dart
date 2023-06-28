import 'package:flutter/material.dart';
import 'package:getx_todo_project/constants/my_colors.dart';
import 'package:getx_todo_project/main.dart';
import 'package:getx_todo_project/widgets/bottom_section_screen_widget.dart';
import 'package:getx_todo_project/widgets/my_floating_action_button_widget.dart';
import 'package:getx_todo_project/widgets/top_section_screen_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MyApp.changeColor(kPrimaryColor, Brightness.light);
    return const Scaffold(
      backgroundColor: Colors.white,
      // * Add Button
      floatingActionButton: MyFloatingActionButtonWidget(),
      // * Whole Page
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            // * Top Section Of The Screen
            TopSectionScreenWidget(),
            BottomSectionScreenWidget(),
          ],
        ),
      ),
    );
  }
}
