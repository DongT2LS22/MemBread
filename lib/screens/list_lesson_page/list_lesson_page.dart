import 'package:flutter/material.dart';
import 'package:gr1_flutter/widget/molecules/card/lesson_card.dart';
import 'package:gr1_flutter/widget/organisms/app_bar/none_title_appbar.dart';
import '../../models/course/course.dart';

class ListLessonPage extends StatelessWidget {
  Course course;
  ListLessonPage({Key? key,required this.course}) : super(key: key);
  
  _buildListLesson(){
    List<Widget> listLesson = [];
    // course.lessons!.forEach((element) {
    //   listLesson.add(LessonCard(order: element.order!, title: element.title!));
    //   listLesson.add(const SizedBox(height: 10,));
    // });
    return listLesson;
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: NonTitleAppBar(
        onPressed:() => Navigator.pop(context),
      ),
      body: Container(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Current lesson",style: Theme.of(context).textTheme.titleMedium,),
            const SizedBox(height: 10,),
            LessonCard(order: 0,title: "Hello",),
            const SizedBox(height: 20,),
            Text("List lesson",style: Theme.of(context).textTheme.titleMedium,),
            const SizedBox(height: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _buildListLesson(),
            )
          ],
        ),
      ),
    );
  }
}
