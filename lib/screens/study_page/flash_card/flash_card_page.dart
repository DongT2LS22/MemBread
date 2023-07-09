import 'package:flutter/material.dart';
import 'package:gr1_flutter/models/course/type/vocabulary/vocabulary.dart';
import 'package:gr1_flutter/widget/organisms/flash_card_page_body.dart';
import 'package:gr1_flutter/widget/organisms/none_title_appbar.dart';
import '../../../models/course/lesson.dart';

class FlashCardPage extends StatelessWidget {
  Lesson lesson;

  FlashCardPage({Key? key, required this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: NonTitleAppBar(onPressed:()=>Navigator.pop(context),),
      body: FlashCardPageBody(lesson: lesson,),
    );
  }
}
