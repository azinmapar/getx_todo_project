import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo_project/constants/constants.dart';
import 'package:getx_todo_project/constants/my_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // * Add Button
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      // * Whole Page
      body: SafeArea(
        child: Stack(
          children: [
            // * Top Part Of The Screen
            Container(
              width: Get.width,
              color: kPrimaryColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // * App Bar
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: k10Width),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: kAppTitleColor,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.menu,
                            color: kAppTitleColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // * Top Icon
                  Container(
                    margin: EdgeInsets.only(left: k60Width, top: k20Height),
                    child: CircleAvatar(
                      radius: k35Radius,
                      backgroundColor: kAppTitleColor,
                      child: Center(
                        child: Icon(
                          Icons.library_add_check_sharp,
                          color: kPrimaryColor,
                          size: k40Icon,
                        ),
                      ),
                    ),
                  ),
                  // * Top Title
                  Container(
                    margin: EdgeInsets.only(left: k80Width, top: k20Height),
                    child: Text(
                      kAppTitle,
                      style: TextStyle(
                        color: kAppTitleColor,
                        fontSize: k20Font,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // * Top Subtitle
                  Container(
                    margin: EdgeInsets.only(left: k70Width, top: k10Height),
                    child: Text(
                      kAppSubtitle,
                      style: TextStyle(
                        color: kAppSubtitleColor,
                        fontSize: k18Font,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
