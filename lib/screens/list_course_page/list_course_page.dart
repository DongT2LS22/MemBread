import 'package:flutter/material.dart';
import 'package:gr1_flutter/widget/organisms/body/list_course_body.dart';
import '../../widget/organisms/app_bar/close_title_appbar.dart';
class ListCoursePage extends StatelessWidget {
  const ListCoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: CloseTitleAppbar(onPressed:()=> Navigator.pop(context),),
      body: ListCourseBody(),
    );
  }
}
