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
    ChoiceBody(),
    DetailVocabularyBody(),
    ChoiceBody(),
    DetailVocabularyBody(),
    ChoiceBody(),
    DetailVocabularyBody(),
    ChoiceBody(),
    DetailVocabularyBody(),
    ChoiceBody(),
    DetailVocabularyBody(),
    ChoiceBody(),
    DetailVocabularyBody(),
    ChoiceBody(),
    DetailVocabularyBody(),ChoiceBody(),
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
              Obx(() => subScreens[controller.progress.value])
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width-40,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20)
        ),
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          onPressed: () { controller.updateProgress();},
          backgroundColor: Theme.of(context).primaryColor,
          child: Text("Next",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white),),
        ),
      ),
    );
  }
}


