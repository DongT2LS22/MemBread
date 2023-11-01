import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gr1_flutter/screens/home_page_remake/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:gr1_flutter/screens/home_page_remake/controller/home_controller.dart';
import 'package:gr1_flutter/screens/home_page_remake/sub_screens/home.dart';
import 'package:gr1_flutter/screens/home_page_remake/sub_screens/rank.dart';
import 'package:gr1_flutter/screens/home_page_remake/sub_screens/study.dart';
import 'package:gr1_flutter/widget/organisms/app_bar/home_page_appbar.dart';


class HomePage extends StatelessWidget {
  HomePage({super.key});
  final HomeController controller = Get.put(HomeController());
  var screens = [
    Home(),
    Study(),
    Rank()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomePageAppBar(title: 'HELLO',),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Obx(()=>IndexedStack(
        index: controller.index.value,
        children: screens,
      )),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
