import 'package:flutter/material.dart';
import 'package:gr1_flutter/screens/study_page/study/study_page_controller.dart';
import 'package:get/get.dart';
class StudyProgressSlider extends StatelessWidget {
  StudyProgressSlider({super.key});

  final StudyPageController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 4,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        Obx(() => Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: MediaQuery.of(context).size.width*controller.progress.value/15,
              height: 5,
              color: Theme.of(context).primaryColor,
            )
        ))
      ],
    );
  }
}
