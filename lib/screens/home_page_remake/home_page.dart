import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:gr1_flutter/repositories/course_repository.dart';
import 'package:gr1_flutter/screens/home_page_remake/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:gr1_flutter/screens/home_page_remake/controller/home_controller.dart';
import 'package:gr1_flutter/screens/home_page_remake/sub_screens/home.dart';
import 'package:gr1_flutter/screens/home_page_remake/sub_screens/rank.dart';
import 'package:gr1_flutter/screens/home_page_remake/sub_screens/study.dart';
import 'package:gr1_flutter/widget/organisms/app_bar/home_page_appbar.dart';


class HomePage extends ConsumerWidget {
  int courseId;
  HomePage({super.key,required this.courseId});
  final HomeController controller = Get.put(HomeController());
  var screens = [
    Home(),
    Study(),
    Rank()
  ];
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final currentCourse = ref.watch(courseGetOne(courseId));
    return currentCourse.when(data: (data) {
      return Scaffold(
        appBar: HomePageAppBar(title: data!.title,),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Obx(()=>IndexedStack(
          index: controller.index.value,
          children: screens,
        )),
        bottomNavigationBar: BottomNavBar(),
      );
    },
      error: (error, s) {
        printError(info: error.toString());
        return Text(error.toString());
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      )
    );
  }
}
