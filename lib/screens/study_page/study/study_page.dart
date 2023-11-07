import 'package:flutter/material.dart';
import 'package:gr1_flutter/screens/study_page/study/study_page_controller.dart';
import 'package:gr1_flutter/screens/study_page/study/subscreens/choice_body.dart';
import 'package:gr1_flutter/screens/study_page/study/subscreens/detail_vocabulary_body.dart';
import 'package:gr1_flutter/widget/atoms/slider/study_progress_slider.dart';
import 'package:gr1_flutter/widget/organisms/app_bar/none_title_appbar.dart';
import 'package:get/get.dart';
class StudyPage extends StatelessWidget {
  StudyPage({super.key});
  final StudyPageController controller = Get.put(StudyPageController());

  var subScreens = [
    ChoiceBody(),
    DetailVocabularyBody(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: NonTitleAppBar(onPressed:()=> Navigator.pop(context),),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              StudyProgressSlider(),
              subScreens[1]
            ],
          ),
        ),
      ),
    );
  }
}


