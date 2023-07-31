import 'package:flutter/material.dart';
import 'package:gr1_flutter/screens/study_page/flash_card/flash_card_page.dart';
import 'package:gr1_flutter/screens/study_page/test/test_page.dart';
import 'package:gr1_flutter/widget/molecules/card/current_lesson_card.dart';
import 'package:gr1_flutter/widget/molecules/card/study_type_card.dart';
import 'package:gr1_flutter/widget/organisms/home_page_appbar.dart';
import '../../models/course/course.dart';

class HomePage extends StatefulWidget {
  int id;

  HomePage({Key? key, required this.id}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<Course> course;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    course = Course.getById(widget.id);
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
                      title: snapshot.data!.title!,
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
                                    lesson: snapshot.data!.lessons![0],
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
                                      lesson: snapshot.data!.lessons!.first)));
                        }
                        )
                  ],
                ),
              ),
            ),
          );
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        // By default, show a loading spinner.
        return const CircularProgressIndicator();
      },
    );
  }
}
