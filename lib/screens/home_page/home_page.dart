import 'package:flutter/material.dart';
import 'package:gr1_flutter/screens/list_lesson_page/list_lesson_page.dart';
import 'package:gr1_flutter/screens/study_page/flash_card/flash_card_page.dart';
import 'package:gr1_flutter/screens/study_page/test/test_page.dart';
import 'package:gr1_flutter/widget/molecules/card/current_lesson_card.dart';
import 'package:gr1_flutter/widget/molecules/card/study_type_card.dart';
import 'package:gr1_flutter/widget/organisms/app_bar/home_page_appbar.dart';
import '../../models/course/course.dart';
import 'package:get/get.dart';


class HomePage extends StatefulWidget {
  int id;
  int? currentLesson;
  HomePage({Key? key, required this.id,this.currentLesson = 0}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<Course> course;
  late int _currentLesson;
  int selectedIndex = 0;
  var screens = [

  ];
  @override
  void initState() {
    super.initState();
    course = Course.getById(widget.id);
    _currentLesson = widget.currentLesson!;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: course,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Scaffold(
            backgroundColor: Theme.of(context).colorScheme.background,
            appBar: HomePageAppBar(
              title: snapshot.data!.title!,
            ),
            body: Container(
              padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CurrentLessonCard(
                      title: snapshot.data!.lessons![_currentLesson].title!,
                      onPressed: ()=>Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ListLessonPage(course: snapshot.data!))),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    StudyTypeCard(
                      title: "Flash card",
                      summary: "Quick review with flash cards",
                      icon: Icons.rectangle_rounded,
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FlashCardPage(
                                    lesson: snapshot.data!.lessons![_currentLesson],
                                    index: 0,
                                  ))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    StudyTypeCard(
                        icon: Icons.school,
                        title: "Study",
                        summary: "Focus on the lessons"),
                    const SizedBox(
                      height: 10,
                    ),
                    StudyTypeCard(
                        icon: Icons.task_rounded,
                        title: "Test",
                        summary: "Review what you've learned",
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TestPage(
                                      lesson: snapshot.data!.lessons![_currentLesson])));
                        })
                  ],
                ),
              ),
            ),
            bottomNavigationBar: Obx(()=>BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              backgroundColor: Theme.of(context).colorScheme.secondary,
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: Theme.of(context).primaryColor,
              unselectedItemColor: Colors.white,
              selectedFontSize: 12,
              selectedIconTheme: IconThemeData(size: 27, opticalSize: 1),
              unselectedIconTheme: IconThemeData(opticalSize: 1, size: 27),
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
                      Icons.person,
                    ),
                    label: "Personal"),
              ],
            )),
          );
        } else if (snapshot.hasError) {
          print("Bug roi ban oi");
          print(snapshot.error);
          print(snapshot.stackTrace);
          return Text('${snapshot.error}');
        }

        // By default, show a loading spinner.
        return const CircularProgressIndicator();
      },
    );
  }
}
