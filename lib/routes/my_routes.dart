import 'package:get/get.dart';
import 'package:getx_todo_project/pages/home_screen.dart';

import '../pages/add_task_screen.dart';

class MyRoutes {
  static List<GetPage> get pages => [
        GetPage(
          name: '/home_screen',
          page: () => const HomeScreen(),
        ),
        GetPage(
          name: '/add_task_screen',
          page: () => const AddTaskScreen(),
        ),
      ];
}
