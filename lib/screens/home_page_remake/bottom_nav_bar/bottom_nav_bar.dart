import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gr1_flutter/screens/home_page_remake/controller/home_controller.dart';

class BottomNavBar extends StatelessWidget {
  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(()=>BottomNavigationBar(
      currentIndex: controller.index.value,
      onTap: controller.changeIndex,
      backgroundColor: Theme.of(context).colorScheme.secondary,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Theme.of(context).primaryColor,
      unselectedItemColor: Colors.white,
      selectedFontSize: 12,
      selectedIconTheme: const IconThemeData(size: 27, opticalSize: 1),
      unselectedIconTheme: const IconThemeData(opticalSize: 1, size: 27),
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.school,
            ),
            label: "Course"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.bar_chart_outlined,
            ),
            label: "Rank"),
      ],
    ));
  }
}
