import 'package:flutter/material.dart';
import 'package:gr1_flutter/screens/add_course_page/add_course_page.dart';
import 'package:gr1_flutter/widget/organisms/body/list_course_body.dart';
import '../../widget/organisms/app_bar/close_title_appbar.dart';

class ListCoursePage extends StatelessWidget {
  String course_title;
  ListCoursePage({Key? key,required this.course_title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: CloseTitleAppbar(
        title: course_title,
        onPressed: () => Navigator.pop(context),
        actions: [
          IconButton(
              onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddCoursePage()));
          },
            icon: const Icon(Icons.add))
        ],
      ),
      body: ListCourseBody(),
    );
  }
}
