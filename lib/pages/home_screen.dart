import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo_project/constants/constants.dart';
import 'package:getx_todo_project/constants/my_colors.dart';
import 'package:getx_todo_project/main.dart';
import 'package:getx_todo_project/widgets/my_floating_action_button_widget.dart';
import 'package:getx_todo_project/widgets/top_section_screen_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MyApp.changeColor(kPrimaryColor, Brightness.light);
    return Scaffold(
      backgroundColor: Colors.white,
      // * Add Button
      floatingActionButton: const MyFloatingActionButtonWidget(),
      // * Whole Page
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            // * Top Section Of The Screen
            const TopSectionScreenWidget(),
            Container(
              width: Get.width,
              height: Get.height * 0.6,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
              ),
              child: Container(
                margin: EdgeInsets.all(k30Height),
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: const Text('Title'),
                        subtitle: const Text('Subtitle'),
                        trailing: Checkbox(
                          value: true,
                          onChanged: (value) {},
                          activeColor: kPrimaryColor,
                          side: const BorderSide(
                            color: Colors.black45,
                            width: 2.0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider(
                        height: 2.0,
                        color: Colors.black45,
                      );
                    },
                    itemCount: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
