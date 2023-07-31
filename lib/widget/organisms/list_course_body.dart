import 'package:flutter/material.dart';
import '../molecules/card/course_card.dart';
class ListCourseBody extends StatelessWidget {

  ListCourseBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Current course",style: Theme.of(context).textTheme.titleMedium,),
            const SizedBox(height: 10,),
            // CourseCard(id : 1, course: null,),
            const SizedBox(height: 20,),
            Text("My course",style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),
      ),
    );
  }
}
